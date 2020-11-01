local await  = require 'await'
local proto  = require 'proto.proto'
local define = require 'proto.define'
local lang   = require 'language'
local files  = require 'files'
local config = require 'config'
local core   = require 'core.diagnostics'
local util   = require 'utility'
local ws     = require 'workspace'

local m = {}
m._start = false
m.cache = {}

local function concat(t, sep)
    if type(t) ~= 'table' then
        return t
    end
    return table.concat(t, sep)
end

local function buildSyntaxError(uri, err)
    local lines   = files.getLines(uri)
    local text    = files.getText(uri)
    local message = lang.script('PARSER_'..err.type, err.info)

    if err.version then
        local version = err.info and err.info.version or config.config.runtime.version
        message = message .. ('(%s)'):format(lang.script('DIAG_NEED_VERSION'
            , concat(err.version, '/')
            , version
        ))
    end

    local related = err.info and err.info.related
    local relatedInformation
    if related then
        relatedInformation = {}
        for _, rel in ipairs(related) do
            local rmessage
            if rel.message then
                rmessage = lang.script('PARSER_'..rel.message)
            else
                rmessage = text:sub(rel.start, rel.finish)
            end
            relatedInformation[#relatedInformation+1] = {
                message  = rmessage,
                location = define.location(uri, define.range(lines, text, rel.start, rel.finish)),
            }
        end
    end

    return {
        code     = err.type:lower():gsub('_', '-'),
        range    = define.range(lines, text, err.start, err.finish),
        severity = define.DiagnosticSeverity.Error,
        source   = lang.script.DIAG_SYNTAX_CHECK,
        message  = message,
        relatedInformation = relatedInformation,
    }
end

local function buildDiagnostic(uri, diag)
    local lines = files.getLines(uri)
    local text  = files.getText(uri)

    local relatedInformation
    if diag.related then
        relatedInformation = {}
        for _, rel in ipairs(diag.related) do
            local rtext  = files.getText(rel.uri)
            local rlines = files.getLines(rel.uri)
            relatedInformation[#relatedInformation+1] = {
                message  = rel.message or rtext:sub(rel.start, rel.finish),
                location = define.location(rel.uri, define.range(rlines, rtext, rel.start, rel.finish))
            }
        end
    end

    return {
        range    = define.range(lines, text, diag.start, diag.finish),
        source   = lang.script.DIAG_DIAGNOSTICS,
        severity = diag.level,
        message  = diag.message,
        code     = diag.code,
        tags     = diag.tags,
        relatedInformation = relatedInformation,
    }
end

local function merge(a, b)
    if not a and not b then
        return nil
    end
    local t = {}
    if a then
        for i = 1, #a do
            t[#t+1] = a[i]
        end
    end
    if b then
        for i = 1, #b do
            t[#t+1] = b[i]
        end
    end
    return t
end

function m.clear(uri)
    local luri = uri:lower()
    if not m.cache[luri] then
        return
    end
    m.cache[luri] = nil
    proto.notify('textDocument/publishDiagnostics', {
        uri = files.getOriginUri(luri) or uri,
        diagnostics = {},
    })
end

function m.syntaxErrors(uri, ast)
    if #ast.errs == 0 then
        return nil
    end

    local results = {}

    for _, err in ipairs(ast.errs) do
        results[#results+1] = buildSyntaxError(uri, err)
    end

    return results
end

function m.diagnostics(uri)
    if not m._start then
        return m.cache[uri]
    end

    local diags = core(uri)
    if not diags then
        return nil
    end

    local results = {}
    for _, diag in ipairs(diags) do
        results[#results+1] = buildDiagnostic(uri, diag)
    end

    return results
end

function m.doDiagnostic(uri)
    uri = uri:lower()
    if files.isLibrary(uri) then
        return
    end
    local ast = files.getAst(uri)
    if not ast then
        m.clear(uri)
        return
    end

    local syntax = m.syntaxErrors(uri, ast)
    local diagnostics = m.diagnostics(uri)
    local full = merge(syntax, diagnostics)
    if not full then
        m.clear(uri)
        return
    end

    if util.equal(m.cache[uri], full) then
        return
    end
    m.cache[uri] = full

    proto.notify('textDocument/publishDiagnostics', {
        uri = files.getOriginUri(uri),
        diagnostics = full,
    })
end

function m.refresh(uri)
    if not m._start then
        return
    end
    await.call(function ()
        -- 一旦文件的版本发生变化，就放弃这次诊断
        await.delay()
        if uri then
            m.doDiagnostic(uri)
        end
        m.diagnosticsAll()
    end, 'files.version')
end

function m.diagnosticsAll()
    if not m._start then
        return
    end
    await.close 'diagnosticsAll'
    await.call(function ()
        local clock = os.clock()
        for uri in files.eachFile() do
            await.delay()
            m.doDiagnostic(uri)
        end
        log.debug('全文诊断耗时：', os.clock() - clock)
    end, 'files.version', 'diagnosticsAll')
end

function m.start()
    m._start = true
    m.diagnosticsAll()
end

files.watch(function (ev, uri)
    if ev == 'remove' then
        m.clear(uri)
    elseif ev == 'update' then
        m.refresh(uri)
    end
end)

return m
