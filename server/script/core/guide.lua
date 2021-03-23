local util         = require 'utility'
local error        = error
local type         = type
local next         = next
local tostring     = tostring
local print        = print
local ipairs       = ipairs
local tableInsert  = table.insert
local tableUnpack  = table.unpack
local tableRemove  = table.remove
local tableMove    = table.move
local tableSort    = table.sort
local tableConcat  = table.concat
local mathType     = math.type
local pairs        = pairs
local setmetatable = setmetatable
local assert       = assert
local select       = select
local osClock      = os.clock
local tonumber     = tonumber
local tointeger    = math.tointeger
local DEVELOP      = _G.DEVELOP
local log          = log
local _G           = _G

local function logWarn(...)
    log.warn(...)
end

local m = {}

m.ANY = {"<ANY>"}

local blockTypes = {
    ['while']       = true,
    ['in']          = true,
    ['loop']        = true,
    ['repeat']      = true,
    ['do']          = true,
    ['function']    = true,
    ['ifblock']     = true,
    ['elseblock']   = true,
    ['elseifblock'] = true,
    ['main']        = true,
}

local breakBlockTypes = {
    ['while']       = true,
    ['in']          = true,
    ['loop']        = true,
    ['repeat']      = true,
}

m.childMap = {
    ['main']        = {'#', 'docs'},
    ['repeat']      = {'#', 'filter'},
    ['while']       = {'filter', '#'},
    ['in']          = {'keys', '#'},
    ['loop']        = {'loc', 'max', 'step', '#'},
    ['if']          = {'#'},
    ['ifblock']     = {'filter', '#'},
    ['elseifblock'] = {'filter', '#'},
    ['elseblock']   = {'#'},
    ['setfield']    = {'node', 'field', 'value'},
    ['setglobal']   = {'value'},
    ['local']       = {'attrs', 'value'},
    ['setlocal']    = {'value'},
    ['return']      = {'#'},
    ['do']          = {'#'},
    ['select']      = {'vararg'},
    ['table']       = {'#'},
    ['tableindex']  = {'index', 'value'},
    ['tablefield']  = {'field', 'value'},
    ['function']    = {'args', '#'},
    ['funcargs']    = {'#'},
    ['setmethod']   = {'node', 'method', 'value'},
    ['getmethod']   = {'node', 'method'},
    ['setindex']    = {'node', 'index', 'value'},
    ['getindex']    = {'node', 'index'},
    ['paren']       = {'exp'},
    ['call']        = {'node', 'args'},
    ['callargs']    = {'#'},
    ['getfield']    = {'node', 'field'},
    ['list']        = {'#'},
    ['binary']      = {1, 2},
    ['unary']       = {1},

    ['doc']                = {'#'},
    ['doc.class']          = {'class', '#extends', 'comment'},
    ['doc.type']           = {'#types', '#enums', 'name', 'comment'},
    ['doc.alias']          = {'alias', 'extends', 'comment'},
    ['doc.param']          = {'param', 'extends', 'comment'},
    ['doc.return']         = {'#returns', 'comment'},
    ['doc.field']          = {'field', 'extends', 'comment'},
    ['doc.generic']        = {'#generics', 'comment'},
    ['doc.generic.object'] = {'generic', 'extends', 'comment'},
    ['doc.vararg']         = {'vararg', 'comment'},
    ['doc.type.array']     = {'node'},
    ['doc.type.table']     = {'node', 'key', 'value', 'comment'},
    ['doc.type.function']  = {'#args', '#returns', 'comment'},
    ['doc.type.typeliteral']  = {'node'},
    ['doc.type.arg']       = {'extends'},
    ['doc.overload']       = {'overload', 'comment'},
    ['doc.see']            = {'name', 'field', 'comment'},
    ['doc.diagnostic']     = {'#names', 'comment'},
}

m.actionMap = {
    ['main']        = {'#'},
    ['repeat']      = {'#'},
    ['while']       = {'#'},
    ['in']          = {'#'},
    ['loop']        = {'#'},
    ['if']          = {'#'},
    ['ifblock']     = {'#'},
    ['elseifblock'] = {'#'},
    ['elseblock']   = {'#'},
    ['do']          = {'#'},
    ['function']    = {'#'},
    ['funcargs']    = {'#'},
}

local TypeSort = {
    ['boolean']  = 1,
    ['string']   = 2,
    ['integer']  = 3,
    ['number']   = 4,
    ['table']    = 5,
    ['function'] = 6,
    ['true']     = 101,
    ['false']    = 102,
    ['nil']      = 999,
}

local NIL = setmetatable({'<nil>'}, { __tostring = function () return 'nil' end })

--- 是否是字面量
---@param obj parser.guide.object
---@return boolean
function m.isLiteral(obj)
    local tp = obj.type
    return tp == 'nil'
        or tp == 'boolean'
        or tp == 'string'
        or tp == 'number'
        or tp == 'table'
        or tp == 'function'
end

--- 获取字面量
---@param obj parser.guide.object
---@return any
function m.getLiteral(obj)
    local tp = obj.type
    if     tp == 'boolean' then
        return obj[1]
    elseif tp == 'string' then
        return obj[1]
    elseif tp == 'number' then
        return obj[1]
    end
    return nil
end

--- 寻找父函数
---@param obj parser.guide.object
---@return parser.guide.object
function m.getParentFunction(obj)
    for _ = 1, 1000 do
        obj = obj.parent
        if not obj then
            break
        end
        local tp = obj.type
        if tp == 'function' or tp == 'main' then
            return obj
        end
    end
    return nil
end

--- 寻找父的table类型 doc.type.table
---@param obj parser.guide.object
---@return parser.guide.object
function m.getParentDocTypeTable(obj)
    for _ = 1, 1000 do
        local parent = obj.parent
        if not parent then
            return nil
        end
        if parent.type == 'doc.type.table' then
            return obj
        end
        obj = parent
    end
    error('guide.getParentDocTypeTable overstack')
end

--- 寻找所在区块
---@param obj parser.guide.object
---@return parser.guide.object
function m.getBlock(obj)
    for _ = 1, 1000 do
        if not obj then
            return nil
        end
        local tp = obj.type
        if blockTypes[tp] then
            return obj
        end
        if obj == obj.parent then
            error('obj == obj.parent?', obj.type)
        end
        obj = obj.parent
    end
    error('guide.getBlock overstack')
end

--- 寻找所在父区块
---@param obj parser.guide.object
---@return parser.guide.object
function m.getParentBlock(obj)
    for _ = 1, 1000 do
        obj = obj.parent
        if not obj then
            return nil
        end
        local tp = obj.type
        if blockTypes[tp] then
            return obj
        end
    end
    error('guide.getParentBlock overstack')
end

--- 寻找所在可break的父区块
---@param obj parser.guide.object
---@return parser.guide.object
function m.getBreakBlock(obj)
    for _ = 1, 1000 do
        obj = obj.parent
        if not obj then
            return nil
        end
        local tp = obj.type
        if breakBlockTypes[tp] then
            return obj
        end
        if tp == 'function' then
            return nil
        end
    end
    error('guide.getBreakBlock overstack')
end

--- 寻找doc的主体
---@param obj parser.guide.object
---@return parser.guide.object
function m.getDocState(obj)
    for _ = 1, 1000 do
        local parent = obj.parent
        if not parent then
            return obj
        end
        if parent.type == 'doc' then
            return obj
        end
        obj = parent
    end
    error('guide.getDocState overstack')
end

--- 寻找所在父类型
---@param obj parser.guide.object
---@return parser.guide.object
function m.getParentType(obj, want)
    for _ = 1, 1000 do
        obj = obj.parent
        if not obj then
            return nil
        end
        if want == obj.type then
            return obj
        end
    end
    error('guide.getParentType overstack')
end

--- 寻找根区块
---@param obj parser.guide.object
---@return parser.guide.object
function m.getRoot(obj)
    for _ = 1, 1000 do
        if obj.type == 'main' then
            return obj
        end
        local parent = obj.parent
        if not parent then
            return nil
        end
        obj = parent
    end
    error('guide.getRoot overstack')
end

---@param obj parser.guide.object
---@return string
function m.getUri(obj)
    if obj.uri then
        return obj.uri
    end
    local root = m.getRoot(obj)
    if root then
        return root.uri
    end
    return ''
end

function m.getENV(source, start)
    if not start then
        start = 1
    end
    return m.getLocal(source, '_ENV', start)
        or m.getLocal(source, '@fenv', start)
end

--- 寻找函数的不定参数，返回不定参在第几个参数上，以及该参数对象。
--- 如果函数是主函数，则返回`0, nil`。
---@return table
---@return integer
function m.getFunctionVarArgs(func)
    if func.type == 'main' then
        return 0, nil
    end
    if func.type ~= 'function' then
        return nil, nil
    end
    local args = func.args
    if not args then
        return nil, nil
    end
    for i = 1, #args do
        local arg = args[i]
        if arg.type == '...' then
            return i, arg
        end
    end
    return nil, nil
end

--- 获取指定区块中可见的局部变量
---@param block table
---@param name string {comment = '变量名'}
---@param pos integer {comment = '可见位置'}
function m.getLocal(block, name, pos)
    block = m.getBlock(block)
    for _ = 1, 1000 do
        if not block then
            return nil
        end
        local locals = block.locals
        local res
        if not locals then
            goto CONTINUE
        end
        for i = 1, #locals do
            local loc = locals[i]
            if loc.effect > pos then
                break
            end
            if loc[1] == name then
                if not res or res.effect < loc.effect then
                    res = loc
                end
            end
        end
        if res then
            return res, res
        end
        ::CONTINUE::
        block = m.getParentBlock(block)
    end
    error('guide.getLocal overstack')
end

--- 获取指定区块中所有的可见局部变量名称
function m.getVisibleLocals(block, pos)
    local result = {}
    m.eachSourceContain(m.getRoot(block), pos, function (source)
        local locals = source.locals
        if locals then
            for i = 1, #locals do
                local loc = locals[i]
                local name = loc[1]
                if loc.effect <= pos then
                    result[name] = loc
                end
            end
        end
    end)
    return result
end

--- 获取指定区块中可见的标签
---@param block table
---@param name string {comment = '标签名'}
function m.getLabel(block, name)
    block = m.getBlock(block)
    for _ = 1, 1000 do
        if not block then
            return nil
        end
        local labels = block.labels
        if labels then
            local label = labels[name]
            if label then
                return label
            end
        end
        if block.type == 'function' then
            return nil
        end
        block = m.getParentBlock(block)
    end
    error('guide.getLocal overstack')
end

function m.getStartFinish(source)
    local start  = source.start
    local finish = source.finish
    if not start then
        local first = source[1]
        if not first then
            return nil, nil
        end
        local last  = source[#source]
        start  = first.start
        finish = last.finish
    end
    return start, finish
end

function m.getRange(source)
    local start  = source.vstart or source.start
    local finish = source.range  or source.finish
    if not start then
        local first = source[1]
        if not first then
            return nil, nil
        end
        local last  = source[#source]
        start  = first.vstart or first.start
        finish = last.range   or last.finish
    end
    return start, finish
end

--- 判断source是否包含offset
function m.isContain(source, offset)
    local start, finish = m.getStartFinish(source)
    if not start then
        return false
    end
    return start <= offset and finish >= offset
end

--- 判断offset在source的影响范围内
---
--- 主要针对赋值等语句时，key包含value
function m.isInRange(source, offset)
    local start, finish = m.getRange(source)
    if not start then
        return false
    end
    return start <= offset and finish >= offset
end

function m.isBetween(source, tStart, tFinish)
    local start, finish = m.getStartFinish(source)
    if not start then
        return false
    end
    return start <= tFinish and finish >= tStart
end

function m.isBetweenRange(source, tStart, tFinish)
    local start, finish = m.getRange(source)
    if not start then
        return false
    end
    return start <= tFinish and finish >= tStart
end

--- 添加child
function m.addChilds(list, obj, map)
    local keys = map[obj.type]
    if keys then
        for i = 1, #keys do
            local key = keys[i]
            if key == '#' then
                for i = 1, #obj do
                    list[#list+1] = obj[i]
                end
            elseif obj[key] then
                list[#list+1] = obj[key]
            elseif type(key) == 'string'
            and key:sub(1, 1) == '#' then
                key = key:sub(2)
                if obj[key] then
                    for i = 1, #obj[key] do
                        list[#list+1] = obj[key][i]
                    end
                end
            end
        end
    end
end

--- 遍历所有包含offset的source
function m.eachSourceContain(ast, offset, callback)
    local list = { ast }
    local mark = {}
    while true do
        local len = #list
        if len == 0 then
            return
        end
        local obj = list[len]
        list[len] = nil
        if not mark[obj] then
            mark[obj] = true
            if m.isInRange(obj, offset) then
                if m.isContain(obj, offset) then
                    local res = callback(obj)
                    if res ~= nil then
                        return res
                    end
                end
                m.addChilds(list, obj, m.childMap)
            end
        end
    end
end

--- 遍历所有在某个范围内的source
function m.eachSourceBetween(ast, start, finish, callback)
    local list = { ast }
    local mark = {}
    while true do
        local len = #list
        if len == 0 then
            return
        end
        local obj = list[len]
        list[len] = nil
        if not mark[obj] then
            mark[obj] = true
            if m.isBetweenRange(obj, start, finish) then
                if m.isBetween(obj, start, finish) then
                    local res = callback(obj)
                    if res ~= nil then
                        return res
                    end
                end
                m.addChilds(list, obj, m.childMap)
            end
        end
    end
end

--- 遍历所有指定类型的source
function m.eachSourceType(ast, type, callback)
    local cache = ast.typeCache
    if not cache then
        cache = {}
        ast.typeCache = cache
        m.eachSource(ast, function (source)
            local tp = source.type
            if not tp then
                return
            end
            local myCache = cache[tp]
            if not myCache then
                myCache = {}
                cache[tp] = myCache
            end
            myCache[#myCache+1] = source
        end)
    end
    local myCache = cache[type]
    if not myCache then
        return
    end
    for i = 1, #myCache do
        callback(myCache[i])
    end
end

--- 遍历所有的source
function m.eachSource(ast, callback)
    local list = { ast }
    local mark = {}
    local index = 1
    while true do
        local obj = list[index]
        if not obj then
            return
        end
        list[index] = false
        index = index + 1
        if not mark[obj] then
            mark[obj] = true
            callback(obj)
            m.addChilds(list, obj, m.childMap)
        end
    end
end

--- 获取指定的 special
function m.eachSpecialOf(ast, name, callback)
    local root = m.getRoot(ast)
    if not root.specials then
        return
    end
    local specials = root.specials[name]
    if not specials then
        return
    end
    for i = 1, #specials do
        callback(specials[i])
    end
end

--- 获取偏移对应的坐标
---@param lines table
---@return integer row
---@return integer col
function m.positionOf(lines, offset)
    if offset < 1 then
        return 0, 0
    end
    local lastLine = lines[#lines]
    if offset > lastLine.finish then
        return #lines, offset - lastLine.start
    end
    local min = 1
    local max = #lines
    for _ = 1, 100 do
        if max <= min then
            local line = lines[min]
            return min, offset - line.start + 1
        end
        local row = (max - min) // 2 + min
        local line = lines[row]
        if offset < line.start then
            max = row - 1
        elseif offset > line.finish then
            min = row + 1
        else
            return row, offset - line.start + 1
        end
    end
    error('Stack overflow!')
end

--- 获取坐标对应的偏移
---@param lines table
---@param row integer
---@param col integer
---@return integer {name = 'offset'}
function m.offsetOf(lines, row, col)
    if row < 1 then
        return 0
    end
    if row > #lines then
        local lastLine = lines[#lines]
        return lastLine.finish
    end
    local line = lines[row]
    local len = line.finish - line.start + 1
    if col < 0 then
        return line.start
    elseif col > len then
        return line.finish
    else
        return line.start + col - 1
    end
end

function m.lineContent(lines, text, row, ignoreNL)
    local line = lines[row]
    if not line then
        return ''
    end
    if ignoreNL then
        return text:sub(line.start, line.range)
    else
        return text:sub(line.start, line.finish)
    end
end

function m.lineRange(lines, row, ignoreNL)
    local line = lines[row]
    if not line then
        return 0, 0
    end
    if ignoreNL then
        return line.start, line.range
    else
        return line.start, line.finish
    end
end

function m.lineData(lines, row)
    return lines[row]
end

function m.getKeyTypeOfLiteral(obj)
    if not obj then
        return nil
    end
    local tp = obj.type
    if tp == 'field'
    or     tp == 'method' then
        return 'string'
    elseif tp == 'string' then
        return 'string'
    elseif tp == 'number' then
        return 'number'
    elseif tp == 'boolean' then
        return 'boolean'
    end
end

function m.getKeyType(obj)
    if not obj then
        return nil
    end
    local tp = obj.type
    if tp == 'getglobal'
    or tp == 'setglobal' then
        return 'string'
    elseif tp == 'local'
    or     tp == 'getlocal'
    or     tp == 'setlocal' then
        return 'local'
    elseif tp == 'getfield'
    or     tp == 'setfield'
    or     tp == 'tablefield' then
        return 'string'
    elseif tp == 'getmethod'
    or     tp == 'setmethod' then
        return 'string'
    elseif tp == 'getindex'
    or     tp == 'setindex'
    or     tp == 'tableindex' then
        return m.getKeyTypeOfLiteral(obj.index)
    elseif tp == 'field'
    or     tp == 'method'
    or     tp == 'doc.see.field' then
        return 'string'
    elseif tp == 'doc.class' then
        return 'string'
    elseif tp == 'doc.alias' then
        return 'string'
    elseif tp == 'doc.field' then
        return 'string'
    elseif tp == 'dummy' then
        return 'string'
    end
    return m.getKeyTypeOfLiteral(obj)
end

function m.getKeyNameOfLiteral(obj)
    if not obj then
        return nil
    end
    local tp = obj.type
    if tp == 'field'
    or     tp == 'method' then
        return obj[1]
    elseif tp == 'string' then
        local s = obj[1]
        if s then
            return s
        end
    elseif tp == 'number' then
        local n = obj[1]
        if n then
            return ('%s'):format(util.viewLiteral(obj[1]))
        end
    elseif tp == 'boolean' then
        local b = obj[1]
        if b then
            return tostring(b)
        end
    end
end

function m.getKeyName(obj)
    if not obj then
        return nil
    end
    local tp = obj.type
    if tp == 'getglobal'
    or tp == 'setglobal' then
        return obj[1]
    elseif tp == 'local'
    or     tp == 'getlocal'
    or     tp == 'setlocal' then
        return obj[1]
    elseif tp == 'getfield'
    or     tp == 'setfield'
    or     tp == 'tablefield' then
        if obj.field then
            return obj.field[1]
        end
    elseif tp == 'getmethod'
    or     tp == 'setmethod' then
        if obj.method then
            return obj.method[1]
        end
    elseif tp == 'getindex'
    or     tp == 'setindex'
    or     tp == 'tableindex' then
        return m.getKeyNameOfLiteral(obj.index)
    elseif tp == 'field'
    or     tp == 'method'
    or     tp == 'doc.see.field' then
        return obj[1]
    elseif tp == 'doc.class' then
        return obj.class[1]
    elseif tp == 'doc.alias' then
        return obj.alias[1]
    elseif tp == 'doc.field' then
        return obj.field[1]
    elseif tp == 'dummy' then
        return obj[1]
    end
    return m.getKeyNameOfLiteral(obj)
end

function m.getSimpleName(obj)
    if obj.type == 'call' then
        local node = obj.node
        if not node then
            return
        end
        if node.special == 'rawset'
        or node.special == 'rawget' then
            local key = obj.args and obj.args[2]
            return m.getKeyName(key)
        end
        return ('%p'):format(obj)
    elseif obj.type == 'table' then
        return ('%p'):format(obj)
    elseif obj.type == 'select' then
        return ('%p'):format(obj)
    elseif obj.type == 'string' then
        return ('%p'):format(obj)
    elseif obj.type == 'doc.class.name'
    or     obj.type == 'doc.type.name'
    or     obj.type == 'doc.see.name' then
        return ('%s'):format(obj[1])
    elseif obj.type == 'doc.class' then
        return ('%s'):format(obj.class[1])
    end
    return m.getKeyName(obj)
end

--- 测试 a 到 b 的路径（不经过函数，不考虑 goto），
--- 每个路径是一个 block 。
---
--- 如果 a 在 b 的前面，返回 `"before"` 加上 2个`list<block>`
---
--- 如果 a 在 b 的后面，返回 `"after"` 加上 2个`list<block>`
---
--- 否则返回 `false`
---
--- 返回的2个 `list` 分别为基准block到达 a 与 b 的路径。
---@param a table
---@param b table
---@return string|boolean mode
---@return table pathA?
---@return table pathB?
function m.getPath(a, b, sameFunction)
    --- 首先测试双方在同一个函数内
    if sameFunction and m.getParentFunction(a) ~= m.getParentFunction(b) then
        return false
    end
    local mode
    local objA
    local objB
    if a.finish < b.start then
        mode = 'before'
        objA = a
        objB = b
    elseif a.start > b.finish then
        mode = 'after'
        objA = b
        objB = a
    else
        return 'equal', {}, {}
    end
    local pathA = {}
    local pathB = {}
    for _ = 1, 1000 do
        objA = m.getParentBlock(objA)
        pathA[#pathA+1] = objA
        if (not sameFunction and objA.type == 'function') or objA.type == 'main' then
            break
        end
    end
    for _ = 1, 1000 do
        objB = m.getParentBlock(objB)
        pathB[#pathB+1] = objB
        if (not sameFunction and objA.type == 'function') or objB.type == 'main' then
            break
        end
    end
    -- pathA: {1, 2, 3, 4, 5}
    -- pathB: {5, 6, 2, 3}
    local top = #pathB
    local start
    for i = #pathA, 1, -1 do
        local currentBlock = pathA[i]
        if currentBlock == pathB[top] then
            start = i
            break
        end
    end
    if not start then
        return nil
    end
    -- pathA: {   1, 2, 3}
    -- pathB: {5, 6, 2, 3}
    local extra = 0
    local align = top - start
    for i = start, 1, -1 do
        local currentA = pathA[i]
        local currentB = pathB[i+align]
        if currentA ~= currentB then
            extra = i
            break
        end
    end
    -- pathA: {1}
    local resultA = {}
    for i = extra, 1, -1 do
        resultA[#resultA+1] = pathA[i]
    end
    -- pathB: {5, 6}
    local resultB = {}
    for i = extra + align, 1, -1 do
        resultB[#resultB+1] = pathB[i]
    end
    return mode, resultA, resultB
end

-- 根据语法，单步搜索定义
local function stepRefOfLocal(loc, mode)
    local results = {}
    if loc.start ~= 0 then
        results[#results+1] = loc
    end
    local refs = loc.ref
    if not refs then
        return results
    end
    for i = 1, #refs do
        local ref = refs[i]
        if ref.start == 0 then
            goto CONTINUE
        end
        if mode == 'def' then
            if ref.type == 'local'
            or ref.type == 'setlocal' then
                results[#results+1] = ref
            end
        else
            if ref.type == 'local'
            or ref.type == 'setlocal'
            or ref.type == 'getlocal' then
                results[#results+1] = ref
            end
        end
        ::CONTINUE::
    end
    return results
end

local function stepRefOfLabel(label, mode)
    local results = { label }
    if not label or mode == 'def' then
        return results
    end
    local refs = label.ref
    if not refs then
        return results
    end
    for i = 1, #refs do
        local ref = refs[i]
        results[#results+1] = ref
    end
    return results
end

local function stepRefOfDocType(status, obj, mode)
    local results = {}
    if obj.type == 'doc.class.name'
    or obj.type == 'doc.type.name'
    or obj.type == 'doc.alias.name'
    or obj.type == 'doc.extends.name'
    or obj.type == 'doc.see.name' then
        local name = obj[1]
        if not name or not status.interface.docType then
            return results
        end
        if name == 'nil'
        or name == 'any'
        or name == 'boolean'
        or name == 'string'
        or name == 'table'
        or name == 'number'
        or name == 'integer'
        or name == 'function'
        or name == 'table'
        or name == 'thread'
        or name == 'userdata'
        or name == 'lightuserdata' then
            mode = 'def'
        end
        local docs = status.interface.docType(name)
        for i = 1, #docs do
            local doc = docs[i]
            if mode == 'def' then
                if doc.type == 'doc.class.name'
                or doc.type == 'doc.alias.name' then
                    results[#results+1] = doc
                end
            else
                results[#results+1] = doc
            end
        end
    else
        results[#results+1] = obj
    end
    return results
end

function m.getStepRef(status, obj, mode)
    if obj.type == 'getlocal'
    or obj.type == 'setlocal' then
        return stepRefOfLocal(obj.node, mode)
    end
    if obj.type == 'local' then
        return stepRefOfLocal(obj, mode)
    end
    if obj.type == 'label' then
        return stepRefOfLabel(obj, mode)
    end
    if obj.type == 'goto' then
        return stepRefOfLabel(obj.node, mode)
    end
    if obj.type == 'doc.class.name'
    or obj.type == 'doc.type.name'
    or obj.type == 'doc.extends.name'
    or obj.type == 'doc.alias.name' then
        return stepRefOfDocType(status, obj, mode)
    end
    if obj.type == 'function' then
        return { obj }
    end
    return nil
end

-- 根据语法，单步搜索field
local function stepFieldOfLocal(loc)
    local results = {}
    local refs = loc.ref
    for i = 1, #refs do
        local ref = refs[i]
        if ref.type == 'setglobal'
        or ref.type == 'getglobal' then
            results[#results+1] = ref
        elseif ref.type == 'getlocal' then
            local nxt = ref.next
            if nxt then
                if nxt.type == 'setfield'
                or nxt.type == 'getfield'
                or nxt.type == 'setmethod'
                or nxt.type == 'getmethod'
                or nxt.type == 'setindex'
                or nxt.type == 'getindex' then
                    results[#results+1] = nxt
                end
            end
        end
    end
    return results
end
local function stepFieldOfTable(tbl)
    local result = {}
    for i = 1, #tbl do
        result[i] = tbl[i]
    end
    return result
end
function m.getStepField(obj)
    if obj.type == 'getlocal'
    or obj.type == 'setlocal' then
        return stepFieldOfLocal(obj.node)
    end
    if obj.type == 'local' then
        return stepFieldOfLocal(obj)
    end
    if obj.type == 'table' then
        return stepFieldOfTable(obj)
    end
end

local function convertSimpleList(list)
    local simple = {}
    for i = #list, 1, -1 do
        local c = list[i]
        if     c.type == 'getglobal'
        or     c.type == 'setglobal' then
            if c.special == '_G' then
                simple.mode = 'global'
                goto CONTINUE
            end
            local loc = c.node
            if loc.special == '_G' then
                simple.mode = 'global'
                if not simple.node then
                    simple.node = c
                end
            else
                simple.mode = 'local'
                simple[#simple+1] = m.getSimpleName(loc)
                if not simple.node then
                    simple.node = loc
                end
            end
        elseif c.type == 'getlocal'
        or     c.type == 'setlocal' then
            if c.special == '_G' then
                simple.mode = 'global'
                goto CONTINUE
            end
            simple.mode = 'local'
            if not simple.node then
                simple.node = c.node
            end
        elseif c.type == 'local' then
            simple.mode = 'local'
            if not simple.node then
                simple.node = c
            end
        else
            if not simple.node then
                simple.node = c
            end
        end
        simple[#simple+1] = m.getSimpleName(c) or m.ANY
        ::CONTINUE::
    end
    if simple.mode == 'global' and #simple == 0 then
        simple[1] = '_G'
        simple.node = list[#list]
    end
    return simple
end

-- 搜索 `a.b.c` 的等价表达式
local function buildSimpleList(obj, max)
    local list = {}
    local cur = obj
    local limit = max and (max + 1) or 11
    for i = 1, max or limit do
        if i == limit then
            return nil
        end
        while cur.type == 'paren' do
            cur = cur.exp
            if not cur then
                return nil
            end
        end
        if cur.type == 'setfield'
        or cur.type == 'getfield'
        or cur.type == 'setmethod'
        or cur.type == 'getmethod'
        or cur.type == 'setindex'
        or cur.type == 'getindex' then
            list[i] = cur
            cur = cur.node
        elseif cur.type == 'tablefield'
        or     cur.type == 'tableindex' then
            list[i] = cur
            cur = cur.parent.parent
            if cur.type == 'return' then
                list[i+1] = list[i].parent
                break
            end
        elseif cur.type == 'getlocal'
        or     cur.type == 'setlocal'
        or     cur.type == 'local' then
            list[i] = cur
            break
        elseif cur.type == 'setglobal'
        or     cur.type == 'getglobal' then
            list[i] = cur
            break
        elseif cur.type == 'select'
        or     cur.type == 'table'
        or     cur.type == 'call' then
            list[i] = cur
            break
        elseif cur.type == 'string' then
            list[i] = cur
            break
        elseif cur.type == '...' then
            list[i] = cur
            break
        elseif cur.type == 'doc.class.name'
        or     cur.type == 'doc.type.name'
        or     cur.type == 'doc.class'
        or     cur.type == 'doc.see.name' then
            list[i] = cur
            break
        elseif cur.type == 'doc.see.field' then
            list[i] = cur
            cur = cur.parent.name
        elseif cur.type == 'function'
        or     cur.type == 'main' then
            break
        else
            return nil
        end
    end
    return convertSimpleList(list)
end

function m.getSimple(obj, max)
    local simpleList
    if obj.type == 'getfield'
    or obj.type == 'setfield'
    or obj.type == 'getmethod'
    or obj.type == 'setmethod'
    or obj.type == 'getindex'
    or obj.type == 'setindex'
    or obj.type == 'local'
    or obj.type == 'getlocal'
    or obj.type == 'setlocal'
    or obj.type == 'setglobal'
    or obj.type == 'getglobal'
    or obj.type == 'tablefield'
    or obj.type == 'tableindex'
    or obj.type == 'select'
    or obj.type == 'call'
    or obj.type == 'table'
    or obj.type == 'string'
    or obj.type == '...'
    or obj.type == 'doc.class.name'
    or obj.type == 'doc.class'
    or obj.type == 'doc.type.name'
    or obj.type == 'doc.see.name'
    or obj.type == 'doc.see.field' then
        simpleList = buildSimpleList(obj, max)
    elseif obj.type == 'field'
    or     obj.type == 'method' then
        simpleList = buildSimpleList(obj.parent, max)
    end
    return simpleList
end

---Create a new status
---@param parentStatus core.guide.status
---@param interface    table
---@param deep         boolean
---@return core.guide.status
function m.status(parentStatus, interface, deep)
    ---@class core.guide.status
    local status = {
        share     = parentStatus and parentStatus.share       or {
            count = 0,
            cacheLock = {},
        },
        depth     = parentStatus and (parentStatus.depth + 1) or 0,
        searchDeep= parentStatus and parentStatus.searchDeep  or deep or -999,
        interface = parentStatus and parentStatus.interface   or {},
        deep      = parentStatus and parentStatus.deep,
        clock     = parentStatus and parentStatus.clock       or osClock(),
        results   = {},
    }
    if interface then
        for k, v in pairs(interface) do
            status.interface[k] = v
        end
    end
    status.deep = status.depth <= status.searchDeep
    return status
end

function m.copyStatusResults(a, b)
    local ra = a.results
    local rb = b.results
    for i = 1, #rb do
        ra[#ra+1] = rb[i]
    end
end

function m.isGlobal(source)
    if source.type == 'setglobal'
    or source.type == 'getglobal' then
        if source.node and source.node.tag == '_ENV' then
            return true
        end
    end
    if source.type == 'field' then
        source = source.parent
    end
    if source.type == 'getfield'
    or source.type == 'setfield' then
        local node = source.node
        if node and node.special == '_G' then
            return true
        end
    end
    return false
end

function m.isDoc(source)
    return source.type:sub(1, 4) == 'doc.'
end

function m.isDocClass(source)
    return source.type == 'doc.class'
end

function m.isSet(source)
    local tp = source.type
    if tp == 'setglobal'
    or tp == 'local'
    or tp == 'setlocal'
    or tp == 'setfield'
    or tp == 'setmethod'
    or tp == 'setindex'
    or tp == 'tablefield'
    or tp == 'tableindex' then
        return true
    end
    if tp == 'call' then
        local special = m.getSpecial(source.node)
        if special == 'rawset' then
            return true
        end
    end
    return false
end

function m.isGet(source)
    local tp = source.type
    if tp == 'getglobal'
    or tp == 'getlocal'
    or tp == 'getfield'
    or tp == 'getmethod'
    or tp == 'getindex' then
        return true
    end
    if tp == 'call' then
        local special = m.getSpecial(source.node)
        if special == 'rawget' then
            return true
        end
    end
    return false
end

function m.getSpecial(source)
    if not source then
        return nil
    end
    return source.special
end

--- 根据函数的调用参数，获取：调用，参数索引
function m.getCallAndArgIndex(callarg)
    local callargs = callarg.parent
    if not callargs or callargs.type ~= 'callargs' then
        return nil
    end
    local index
    for i = 1, #callargs do
        if callargs[i] == callarg then
            index = i
            break
        end
    end
    local call = callargs.parent
    local node = call.node
    if node.type == 'getmethod' then
        index = index + 1
    end
    return call, index
end

--- 根据函数调用的返回值，获取：调用的函数，参数列表，自己是第几个返回值
function m.getCallValue(source)
    local value = m.getObjectValue(source) or source
    if not value then
        return
    end
    local call, index
    if value.type == 'call' then
        call  = value
        index = 1
    elseif value.type == 'select' then
        call  = value.vararg
        index = value.index
        if call.type ~= 'call' then
            return
        end
    else
        return
    end
    if call.node.special == 'pcall'
    or call.node.special == 'xpcall' then
        return call.args and call.args[1], call.args, index - 1
    end
    return call.node, call.args, index
end

function m.getNextRef(ref)
    local nextRef = ref.next
    if nextRef then
        if nextRef.type == 'setfield'
        or nextRef.type == 'getfield'
        or nextRef.type == 'setmethod'
        or nextRef.type == 'getmethod'
        or nextRef.type == 'setindex'
        or nextRef.type == 'getindex' then
            return nextRef
        end
    end
    -- 穿透 rawget 与 rawset
    local call, index = m.getCallAndArgIndex(ref)
    if call then
        if call.node.special == 'rawset' and index == 1 then
            return call
        end
        if call.node.special == 'rawget' and index == 1 then
            return call
        end
    end

    return nil
end

function m.checkSameSimpleInValueOfTable(status, value, start, pushQueue)
    if value.type ~= 'table' then
        return
    end
    for i = 1, #value do
        local field = value[i]
        pushQueue(field, start + 1)
    end
end

function m.checkStatusDepth(status)
    if status.depth <= 20 then
        return true
    end
    if m.debugMode then
        error('status.depth overflow')
    elseif DEVELOP then
        --log.warn(debug.traceback('status.depth overflow'))
        logWarn('status.depth overflow')
    end
    return false
end

function m.searchFields(status, obj, key)
    if not m.checkStatusDepth(status) then
        return
    end
    local simple = m.getSimple(obj)
    if not simple then
        return
    end
    simple[#simple+1] = key or m.ANY
    m.searchSameFields(status, simple, 'field')
    m.cleanResults(status.results)
end

function m.searchDefFields(status, obj, key)
    if not m.checkStatusDepth(status) then
        return
    end
    local simple = m.getSimple(obj)
    if not simple then
        return
    end
    simple[#simple+1] = key or m.ANY
    m.searchSameFields(status, simple, 'deffield')
    m.cleanResults(status.results)
end

---@param obj parser.guide.object
---@return parser.guide.object
function m.getObjectValue(obj)
    while obj.type == 'paren' do
        obj = obj.exp
        if not obj then
            return nil
        end
    end
    if obj.type == 'boolean'
    or obj.type == 'number'
    or obj.type == 'integer'
    or obj.type == 'string'
    or obj.type == 'doc.type.table'
    or obj.type == 'doc.type.arrary' then
        return obj
    end
    if obj.value then
        return obj.value
    end
    if obj.type == 'field'
    or obj.type == 'method' then
        return obj.parent and obj.parent.value
    end
    if obj.type == 'call' then
        if obj.node.special == 'rawset' then
            return obj.args and obj.args[3]
        else
            return obj
        end
    end
    if obj.type == 'select' then
        return obj
    end
    return nil
end

function m.checkSameSimpleInValueInMetaTable(status, mt, start, pushQueue)
    local cache, makeCache = m.getRefCache(status, mt, '__index')
    if cache then
        for _, obj in ipairs(cache) do
            pushQueue(obj, start, true)
        end
        return
    end
    cache = {}
    local newStatus = m.status(status)
    m.searchDefFields(newStatus, mt, '__index')
    local refsStatus = m.status(status)
    for i = 1, #newStatus.results do
        local indexValue = m.getObjectValue(newStatus.results[i])
        if indexValue then
            m.searchRefs(refsStatus, indexValue, 'ref')
        end
    end
    for i = 1, #refsStatus.results do
        local obj = refsStatus.results[i]
        pushQueue(obj, start, true)
        cache[i] = obj
    end
    if makeCache then
        makeCache(cache)
    end
end
function m.checkSameSimpleInValueOfSetMetaTable(status, func, start, pushQueue)
    if not func or func.special ~= 'setmetatable' then
        return
    end
    local call = func.parent
    local args = call.args
    if not args then
        return
    end
    local obj = args[1]
    local mt = args[2]
    if obj then
        pushQueue(obj, start, true)
        local newStatus = m.status(status)
        m.searchRefs(newStatus, obj, 'def')
        for _, def in ipairs(newStatus.results) do
            pushQueue(def, start, true)
        end
    end
    if mt then
        if not status.share.markMetaTable then
            status.share.markMetaTable = {}
        end
        if status.share.markMetaTable[mt] then
            return
        end
        status.share.markMetaTable[mt] = true
        m.checkSameSimpleInValueInMetaTable(status, mt, start, pushQueue)
        status.share.markMetaTable[mt] = nil
    end
end

function m.checkSameSimpleInValueOfCallMetaTable(status, call, start, pushQueue)
    if status.crossMetaTableMark then
        return
    end
    status.crossMetaTableMark = true
    if call.type == 'call' then
        m.checkSameSimpleInValueOfSetMetaTable(status, call.node, start, pushQueue)
    end
    status.crossMetaTableMark = false
end

function m.checkSameSimpleInSpecialBranch(status, obj, start, pushQueue)
    if status.interface.index then
        local results = status.interface.index(obj)
        if not results then
            return
        end
        for _, res in ipairs(results) do
            pushQueue(obj, start + 1)
        end
    end
end

function m.checkSameSimpleInParamSelf(status, obj, start, pushQueue)
    if obj.type ~= 'getlocal' or obj[1] ~= 'self' then
        return
    end
    local node = obj.node
    if node.tag == 'self' then
        return
    end
    if node.parent.type ~= 'funcargs' then
        return
    end
    local func = node.parent.parent
    if func.type ~= 'function' or func.parent.type ~= 'setfield' then
        return
    end
    local fieldNode = func.parent.node
    local newStatus = m.status(status)
    m.searchRefs(newStatus, fieldNode, 'ref')
    for _, ref in ipairs(newStatus.results) do
        pushQueue(ref, start, true)
    end
end

local function appendValidGenericType(results, status, typeName, obj)
    if typeName.parent.type == 'doc.type.typeliteral' then
        if obj.type == 'string' and status.interface.docType then
            local docs = status.interface.docType(obj[1])
            for i = 1, #docs do
                local doc = docs[i]
                if doc.type == 'doc.class.name'
                or doc.type == 'doc.alias.name' then
                    results[#results+1] = doc
                    break
                end
            end
        end
    else
        -- 发现没有使用 `T`，则沿用既有逻辑直接返回实参
        results[#results+1] = obj
    end
end

local function stepRefOfGenericCrossTable(status, doc, typeName)
    for _, typeUnit in ipairs(doc.extends.types) do
        if typeUnit.type == 'doc.type.table' then
            for _, where in ipairs {'key', 'value'} do
                local childTypes = typeUnit[where].types
                for _, childName in ipairs(childTypes) do
                    if childName[1] == typeName[1] then
                        return function (obj)
                            local childStatus = m.status(status)
                            m.searchRefs(childStatus, obj, 'def')
                            for _, res in ipairs(childStatus.results) do
                                if res.type == 'doc.type.table' then
                                    return res[where]
                                end
                                if res.type == 'doc.type.array' then
                                    if where == 'key' then
                                        return status.interface and status.interface.docType('integer')[1]
                                    end
                                    if where == 'value' then
                                        return res.node
                                    end
                                end
                            end
                        end
                    end
                end
            end
            return function (obj)
                return nil
            end
        elseif typeUnit.type == 'doc.type.array' then
            return function (obj)
                local childStatus = m.status(status)
                m.searchRefs(childStatus, obj, 'def')
                for _, res in ipairs(childStatus.results) do
                    if res.type == 'doc.type.array' then
                        return res.node
                    end
                end
            end
        end
    end
    return nil
end

local function getIteratorArg(status, args, index)
    local call = args.parent
    local node = call.node
    if not node.iterator then
        return nil
    end
    if node.type ~= 'call' then
        return nil
    end
    local results = m.checkSameSimpleInCallInSameFile(status, node.node, node.args, index + 1)
    return results[1]
end

local function stepRefOfGeneric(status, typeUnit, args, mode)
    local results = {}
    if not args then
        return results
    end
    local myName = typeUnit[1]
    for _, typeName in ipairs(typeUnit.typeGeneric[myName]) do
        if typeName == typeUnit then
            goto CONTINUE
        end
        local docArg = m.getParentType(typeName, 'doc.type.arg')
                   or  m.getParentType(typeName, 'doc.param')
                   or  m.getParentType(typeName, 'doc.type.array')
        if not docArg then
            goto CONTINUE
        end
        local doc = m.getDocState(docArg)
        if not doc.bindSources then
            goto CONTINUE
        end
        local crossTable = stepRefOfGenericCrossTable(status, docArg, typeName)

        -- find out param index
        local genericIndex
        if docArg.type == 'doc.param' then
            local paramName = docArg.param[1]
            for _, source in ipairs(doc.bindSources) do
                if  source.type == 'local'
                and source[1] == paramName
                and source.parent.type == 'funcargs' then
                    for index, arg in ipairs(source.parent) do
                        if arg == source then
                            genericIndex = index
                            break
                        end
                    end
                end
            end
        elseif docArg.type == 'doc.type.arg' then
            for index, arg in ipairs(docArg.parent.args) do
                if arg == docArg then
                    genericIndex = index
                    break
                end
            end
        end

        local callArg = args[genericIndex]
                    or  getIteratorArg(status, args, genericIndex)

        if not callArg then
            goto CONTINUE
        end
        if crossTable then
            callArg = crossTable(callArg)
            if not callArg then
                goto CONTINUE
            end
        end
        appendValidGenericType(results, status, typeName, callArg)
        ::CONTINUE::
    end
    return results
end

function m.checkSameSimpleByDocType(status, doc, args)
    if status.share.searchingBindedDoc then
        return
    end
    if doc.type ~= 'doc.type' then
        return
    end
    local results = {}
    for _, piece in ipairs(doc.types) do
        if piece.typeGeneric then
            local pieceResult = stepRefOfGeneric(status, piece, args, 'def')
            for _, res in ipairs(pieceResult) do
                results[#results+1] = res
            end
        else
            local pieceResult = stepRefOfDocType(status, piece, 'def')
            for _, res in ipairs(pieceResult) do
                results[#results+1] = res
            end
        end
    end
    return results
end

function m.checkSameSimpleByBindDocs(status, obj, start, pushQueue, mode)
    if not obj.bindDocs then
        return
    end
    if status.share.searchingBindedDoc then
        return
    end
    local skipInfer = false
    local results = {}
    for _, doc in ipairs(obj.bindDocs) do
        if     doc.type == 'doc.class' then
            results[#results+1] = doc
        elseif doc.type == 'doc.type' then
            results[#results+1] = doc
        elseif doc.type == 'doc.param' then
            -- function (x) 的情况
            if  obj.type == 'local'
            and m.getKeyName(obj) == doc.param[1] then
                if obj.parent.type == 'funcargs'
                or obj.parent.type == 'in'
                or obj.parent.type == 'loop' then
                    results[#results+1] = doc.extends
                end
            end
        elseif doc.type == 'doc.field' then
            results[#results+1] = doc
        elseif doc.type == 'doc.vararg' then
            if obj.type == '...' then
                results[#results+1] = doc
            end
        end
    end
    for _, res in ipairs(results) do
        if res.type == 'doc.class'
        or res.type == 'doc.type'
        or res.type == 'doc.vararg' then
            pushQueue(res, start, true)
            skipInfer = true
        end
        if res.type == 'doc.type.function' then
            pushQueue(res, start, true)
        elseif res.type == 'doc.field' then
            pushQueue(res, start + 1)
        end
    end
    return skipInfer
end

function m.checkSameSimpleOfRefByDocSource(status, obj, start, pushQueue, mode)
    if status.share.searchingBindedDoc then
        return
    end
    if not obj.bindSources then
        return
    end
    status.share.searchingBindedDoc = true
    local mark = {}
    local newStatus = m.status(status)
    for _, ref in ipairs(obj.bindSources) do
        if not mark[ref] then
            mark[ref] = true
            m.searchRefs(newStatus, ref, mode)
        end
    end
    status.share.searchingBindedDoc = nil
    for _, res in ipairs(newStatus.results) do
        pushQueue(res, start, true)
    end
end

function m.checkSameSimpleOfRefByDocReturn(status, obj, start, pushQueue, mode)
    if status.share.searchingBindedDoc then
        return
    end
    if not obj.bindSources then
        return
    end
    local index = 0
    for _, doc in ipairs(obj.bindGroup) do
        if doc.type == 'doc.return' then
            index = index + 1
            if doc == obj then
                break
            end
        end
    end
    status.share.searchingBindedDoc = true
    local mark = {}
    local newStatus = m.status(status)
    for _, ref in ipairs(obj.bindSources) do
        if not mark[ref] then
            mark[ref] = true
            m.searchRefs(newStatus, ref, mode)
        end
    end
    status.share.searchingBindedDoc = nil
    for _, res in ipairs(newStatus.results) do
        local call = res.parent
        if call.type == 'call' then
            if index == 1 then
                local sel = call.parent
                if sel.type == 'select' and sel.index == index then
                    pushQueue(sel.parent, start, true)
                end
            else
                if call.extParent then
                    for _, sel in ipairs(call.extParent) do
                        if sel.type == 'select' and sel.index == index then
                            pushQueue(sel.parent, start, true)
                        end
                    end
                end
            end
        end
    end
end

local function getArrayOrTableLevel(obj)
    local level = 0
    while true do
        local parent = obj.parent
        if parent.type == 'doc.type.array' then
            level = level + 1
        elseif parent.type == 'doc.type.table' then
            if obj.type == 'doc.type' then
                level = level + 1
            -- else 只存在 obj.type == 'doc.type.name' 的情况，即 table<k,v> 中的 table，这种是不需要再增加层级的
            end
        elseif parent.type == 'doc.type' and parent.parent and parent.parent.type == 'doc.type.table' then
            level = level + 1
            parent = parent.parent
        else
            break
        end
        obj = parent
    end
    return level
end

function m.checkSameSimpleByDoc(status, obj, start, pushQueue, mode)
    if obj.type == 'doc.class.name'
    or obj.type == 'doc.class' then
        if obj.type == 'doc.class.name' then
            obj = m.getDocState(obj)
        end
        local classStart
        for _, doc in ipairs(obj.bindGroup) do
            if doc == obj then
                classStart = true
            elseif doc.type == 'doc.class' then
                classStart = false
            end
            if classStart and doc.type == 'doc.field' then
                pushQueue(doc, start + 1)
            end
        end
        m.checkSameSimpleOfRefByDocSource(status, obj, start, pushQueue, mode)
        if mode == 'ref' then
            local pieceResult = stepRefOfDocType(status, obj.class, 'ref')
            for _, res in ipairs(pieceResult) do
                pushQueue(res, start, true)
            end
            if obj.extends then
                for _, ext in ipairs(obj.extends) do
                    local pieceResult = stepRefOfDocType(status, ext, 'def')
                    for _, res in ipairs(pieceResult) do
                        pushQueue(res, start, true)
                    end
                end
            end
        end
        return true
    elseif obj.type == 'doc.type' then
        for _, piece in ipairs(obj.types) do
            local pieceResult = stepRefOfDocType(status, piece, 'def')
            for _, res in ipairs(pieceResult) do
                pushQueue(res, start, true)
            end
        end
        if mode == 'ref' then
            m.checkSameSimpleOfRefByDocSource(status, obj, start, pushQueue, mode)
        end
        return true
    elseif obj.type == 'doc.type.name'
    or     obj.type == 'doc.see.name' then
        local pieceResult = stepRefOfDocType(status, obj, 'def')
        for _, res in ipairs(pieceResult) do
            pushQueue(res, start, true)
        end

        if mode == 'ref' then
            local state = m.getDocState(obj)
            if state.type == 'doc.type' then
                m.checkSameSimpleOfRefByDocSource(status, state, start - getArrayOrTableLevel(obj), pushQueue, mode)
            end
            if state.type == 'doc.return' then
                m.checkSameSimpleOfRefByDocReturn(status, state, start - getArrayOrTableLevel(obj), pushQueue, mode)
            end
        end
        return true
    elseif obj.type == 'doc.field' then
        if  mode ~= 'field'
        and mode ~= 'deffield' then
            return m.checkSameSimpleByDoc(status, obj.extends, start, pushQueue, mode)
        end
    elseif obj.type == 'doc.type.array' then
        pushQueue(obj.node, start + 1, true)
        return true
    elseif obj.type == 'doc.type.table' then
        pushQueue(obj.node, start, true)
        pushQueue(obj.value, start + 1, true)
        return true
    elseif obj.type == 'doc.vararg' then
        pushQueue(obj.vararg, start, true)
    end
end

function m.checkSameSimpleInArg1OfSetMetaTable(status, obj, start, pushQueue)
    local args = obj.parent
    if not args or args.type ~= 'callargs' then
        return
    end
    local callNode = args.parent.node
    if callNode.special ~= 'setmetatable' then
        return
    end
    if args[1] ~= obj then
        return
    end
    local mt = args[2]
    if mt then
        if m.hasValueMark(status, mt) then
            return
        end
        m.checkSameSimpleInValueInMetaTable(status, mt, start, pushQueue)
    end
end

function m.searchSameMethodOutSelf(ref, mark)
    local selfNode
    if ref.tag == 'self' then
        selfNode = ref
    else
        if ref.type == 'getlocal'
        or ref.type == 'setlocal' then
            local node = ref.node
            if node.tag == 'self' then
                selfNode = node
            end
        end
    end
    if selfNode then
        if mark[selfNode] then
            return nil
        end
        mark[selfNode] = true
        local method = selfNode.method.node
        if mark[method] then
            return nil
        end
        mark[method] = true
        return method
    end
end

function m.searchSameMethodIntoSelf(ref, mark)
    local nxt = ref.next
    if not nxt then
        return nil
    end
    if nxt.type ~= 'setmethod' then
        return nil
    end
    if mark[ref] then
        return nil
    end
    mark[ref] = true
    local value = nxt.value
    if not value or value.type ~= 'function' then
        return nil
    end
    local selfRef = value.locals and value.locals[1]
    if not selfRef or selfRef.tag ~= 'self' then
        return nil
    end
    if mark[selfRef] then
        return nil
    end
    mark[selfRef] = true
    return selfRef
end

function m.searchSameFieldsCrossMethod(status, ref, start, pushQueue, mode)
    if status.share.crossMethodMark2 then
        return
    end
    local mark = status.crossMethodMark
    if not mark then
        mark = {}
        status.crossMethodMark = mark
    end
    if mark[ref] then
        return
    end
    local selfRef = m.searchSameMethodIntoSelf(ref, mark)
    if selfRef then
        tracy.ZoneBeginN 'searchSameFieldsCrossMethod'
        local _ <close> = tracy.ZoneEnd
        -- 如果自己是method，则只检查自己内部的self引用
        status.share.inBeSetValue = (status.share.inBeSetValue or 0) + 1
        status.share.crossMethodMark2 = true
        local newStatus = m.status(status)
        m.searchRefs(newStatus, selfRef, mode)
        for _, res in ipairs(newStatus.results) do
            pushQueue(res, start, true)
        end
        status.share.inBeSetValue = (status.share.inBeSetValue or 0) - 1
        status.share.crossMethodMark2 = nil
        return
    end
    local method = m.searchSameMethodOutSelf(ref, mark)
    if method then
        pushQueue(method, start, true)
        return
    end
end

local function checkSameSimpleAndMergeFunctionReturnsByDoc(status, results, source, index, args)
    source = m.getObjectValue(source) or source
    if not source or source.type ~= 'function' then
        return
    end
    if not source.bindDocs then
        return
    end
    local returns = {}
    for _, doc in ipairs(source.bindDocs) do
        if doc.type == 'doc.return' then
            for _, rtn in ipairs(doc.returns) do
                returns[#returns+1] = rtn
            end
        end
    end
    local rtn = returns[index]
    if not rtn then
        return
    end
    local types = m.checkSameSimpleByDocType(status, rtn, args)
    if not types then
        return
    end
    for _, res in ipairs(types) do
        results[#results+1] = res
    end
    return true
end

local function checkSameSimpleAndMergeDocFunctionReturn(status, results, docFunc, index, args)
    if docFunc.type ~= 'doc.type.function' then
        return
    end
    local rtn = docFunc.returns[index]
    if rtn then
        local types = m.checkSameSimpleByDocType(status, rtn, args)
        if types then
            for _, res in ipairs(types) do
                results[#results+1] = res
            end
            return true
        end
    end
end

local function checkSameSimpleAndMergeDocTypeFunctionReturns(status, results, source, index)
    if not source.bindDocs then
        return
    end
    for _, doc in ipairs(source.bindDocs) do
        if doc.type == 'doc.type' then
            for _, typeUnit in ipairs(doc.types) do
                if checkSameSimpleAndMergeDocFunctionReturn(status, results, typeUnit, index) then
                    return true
                end
            end
        end
    end
end

function m.checkSameSimpleInCallInSameFile(status, func, args, index)
    if not status.share.callResultsCache then
        status.share.callResultsCache = {}
    end
    local cache = status.share.callResultsCache[func]
    if not cache then
        cache = {}
        status.share.callResultsCache[func] = cache
    end
    local results = cache[index]
    if results then
        return results
    end
    results = {}
    if func.special then
        --return results
    end
    local newStatus = m.status(status)
    m.searchRefs(newStatus, func, 'def')
    local hasDocReturn
    for _, def in ipairs(newStatus.results) do
        hasDocReturn =   checkSameSimpleAndMergeDocTypeFunctionReturns(status, results, def, index)
                    or   checkSameSimpleAndMergeFunctionReturnsByDoc(status, results, def, index, args)
                    or   checkSameSimpleAndMergeDocFunctionReturn(status, results, def, index, args)
                    or   hasDocReturn
    end
    if not hasDocReturn then
        for _, def in ipairs(newStatus.results) do
            local value = m.getObjectValue(def) or def
            if value.type == 'function' then
                local returns = value.returns
                if returns then
                    for _, ret in ipairs(returns) do
                        local exp = ret[index]
                        if exp then
                            results[#results+1] = exp
                        end
                    end
                end
            end
        end
        -- generic cannot cache
        cache[index] = results
    end
    return results
end

function m.checkSameSimpleInCall(status, ref, start, pushQueue, mode)
    if status.share.inBeSetValue and status.share.inBeSetValue > 0 then
        return
    end
    if status.share.inSetValue and status.share.inSetValue > 5 then
        return
    end
    local func, args, index = m.getCallValue(ref)
    if not func then
        return
    end
    if m.checkCallMark(status, func.parent, true) then
        return
    end
    status.share.inSetValue = (status.share.inSetValue or 0) + 1
    -- 检查赋值是 semetatable() 的情况
    m.checkSameSimpleInValueOfSetMetaTable(status, func, start, pushQueue)
    local objs = m.checkSameSimpleInCallInSameFile(status, func, args, index)
    if status.interface.call then
        local cobjs = status.interface.call(func, args, index)
        if cobjs then
            for _, obj in ipairs(cobjs) do
                if not m.checkReturnMark(status, obj) then
                    objs[#objs+1] = obj
                end
            end
        end
    end
    m.cleanResults(objs)
    if not status.share.callFuncMark then
        status.share.callFuncMark = {}
    end
    local mark = {}
    for _, obj in ipairs(objs) do
        if mark[obj] then
            goto CONTINUE
        end
        if status.share.callFuncMark[obj] then
            goto CONTINUE
        end
        status.share.callFuncMark[obj] = true
        local newStatus = m.status(status)
        m.searchRefs(newStatus, obj, mode)
        pushQueue(obj, start, true)
        mark[obj] = true
        for _, obj in ipairs(newStatus.results) do
            pushQueue(obj, start, true)
            mark[obj] = true
        end
        status.share.callFuncMark[obj] = nil
        ::CONTINUE::
    end
    status.share.inSetValue = (status.share.inSetValue or 0) - 1
end

local function searchRawset(ref, results)
    if m.getKeyName(ref) ~= 'rawset' then
        return
    end
    local call = ref.parent
    if call.type ~= 'call' or call.node ~= ref then
        return
    end
    if not call.args then
        return
    end
    local arg1 = call.args[1]
    if arg1.special ~= '_G' then
        -- 不会吧不会吧，不会真的有人写成 `rawset(_G._G._G, 'xxx', value)` 吧
        return
    end
    results[#results+1] = call
end

local function searchG(ref, results)
    while ref and m.getKeyName(ref) == '_G' do
        results[#results+1] = ref
        ref = ref.next
    end
    if ref then
        results[#results+1] = ref
        searchRawset(ref, results)
    end
end

local function searchEnvRef(ref, results)
    if     ref.type == 'setglobal'
    or     ref.type == 'getglobal' then
        results[#results+1] = ref
        searchG(ref, results)
    elseif ref.type == 'getlocal' then
        results[#results+1] = ref.next
        searchG(ref.next, results)
    end
end

function m.findGlobals(ast)
    local root = m.getRoot(ast)
    local results = {}
    local env = m.getENV(root)
    if env.ref then
        for _, ref in ipairs(env.ref) do
            searchEnvRef(ref, results)
        end
    end
    return results
end

function m.findGlobalsOfName(ast, name)
    local root = m.getRoot(ast)
    local results = {}
    local globals = m.findGlobals(root)
    for _, global in ipairs(globals) do
        if m.getKeyName(global) == name then
            results[#results+1] = global
        end
    end
    return results
end

function m.checkSameSimpleInGlobal(status, source)
    local name = m.getKeyName(source)
    if not name then
        return
    end
    local objs
    if status.interface.global then
        objs = status.interface.global(name)
    else
        objs = m.findGlobalsOfName(source, name)
    end
    return objs
end

function m.hasValueMark(status, value)
    if not status.share.valueMark then
        status.share.valueMark = {}
    end
    if status.share.valueMark[value] then
        return true
    end
    status.share.valueMark[value] = true
    return false
end

function m.checkCallMark(status, a, mark)
    if not status.share.callMark then
        status.share.callMark = {}
    end
    if mark then
        status.share.callMark[a] = mark
    else
        return status.share.callMark[a]
    end
    return false
end

function m.checkReturnMark(status, a, mark)
    if not status.share.returnMark then
        status.share.returnMark = {}
    end
    local result = status.share.returnMark[a]
    if mark then
        status.share.returnMark[a] = mark
    end
    return result
end

function m.searchSameFieldsInValue(status, ref, start, pushQueue, mode)
    if status.share.inBeSetValue and status.share.inBeSetValue > 0 then
        return
    end
    if status.share.inSetValue and status.share.inSetValue > 5 then
        return
    end
    local value = m.getObjectValue(ref)
    if not value then
        return
    end
    if m.hasValueMark(status, value) then
        return
    end
    status.share.inSetValue = (status.share.inSetValue or 0) + 1
    if not status.share.tempValueMark then
        status.share.tempValueMark = {}
    end
    if not status.share.tempValueMark[value] then
        status.share.tempValueMark[value] = true
        local newStatus = m.status(status)
        m.searchRefs(newStatus, value, mode)
        status.share.tempValueMark[value] = nil
        for _, res in ipairs(newStatus.results) do
            pushQueue(res, start, true)
        end
        pushQueue(value, start, true)
    end
    status.share.inSetValue = (status.share.inSetValue or 0) - 1
    -- 检查形如 a = f() 的分支情况
    m.checkSameSimpleInCall(status, value, start, pushQueue, mode)
end

function m.checkSameSimpleAsTableField(status, ref, start, pushQueue)
    if not status.deep then
        --return
    end
    local parent = ref.parent
    if not parent or parent.type ~= 'tablefield' then
        return
    end
    if m.hasValueMark(status, ref) then
        return
    end
    local newStatus = m.status(status)
    m.searchRefs(newStatus, parent.field, 'ref')
    for _, res in ipairs(newStatus.results) do
        pushQueue(res, start, true)
    end
end

function m.checkSearchLevel(status)
    status.share.back = status.share.back or 0
    if status.share.back >= (status.interface.searchLevel or 0) then
        -- TODO 限制向前搜索的次数
        --return true
    end
    status.share.back = status.share.back + 1
    return false
end

function m.checkSameSimpleAsReturn(status, ref, start, pushQueue)
    if not status.deep then
        return
    end
    if not ref.parent or ref.parent.type ~= 'return' then
        return
    end
    if ref.parent.parent.type ~= 'main' then
        return
    end
    if m.checkSearchLevel(status) then
        return
    end
    local newStatus = m.status(status)
    m.searchRefsAsFunctionReturn(newStatus, ref, 'ref')
    for _, res in ipairs(newStatus.results) do
        if not m.checkCallMark(status, res) then
            pushQueue(res, start, true)
        end
    end
end

function m.checkSameSimpleAsSetValue(status, ref, start, pushQueue)
    if not status.deep then
        --return
    end
    if status.share.inSetValue and status.share.inSetValue > 0 then
        return
    end
    if status.share.inBeSetValue and status.share.inBeSetValue > 5 then
        return
    end
    if ref.type == 'select' then
        return
    end
    local parent = ref.parent
    if not parent then
        return
    end
    if m.getObjectValue(parent) ~= ref then
        return
    end
    if m.hasValueMark(status, ref) then
        return
    end
    if m.checkSearchLevel(status) then
        return
    end
    local obj
    if     parent.type == 'local'
    or     parent.type == 'setglobal'
    or     parent.type == 'setlocal' then
        obj = parent
    elseif parent.type == 'setfield' then
        obj = parent.field
    elseif parent.type == 'setmethod' then
        obj = parent.method
    end
    if not obj then
        return
    end
    status.share.inBeSetValue = (status.share.inBeSetValue or 0) + 1
    local newStatus = m.status(status)
    m.searchRefs(newStatus, obj, 'ref')
    for _, res in ipairs(newStatus.results) do
        pushQueue(res, start, true)
    end
    status.share.inBeSetValue = (status.share.inBeSetValue or 0) - 1
end

local function getTableAndIndexIfIsForPairsKeyOrValue(ref)
    if ref.type ~= 'local' then
        return
    end

    if not ref.parent or ref.parent.type ~= 'in' then
        return
    end

    if not ref.value or ref.value.type ~= 'select' then
        return
    end

    local rootSelectObj = ref.value
    if rootSelectObj.index ~= 1 and rootSelectObj.index ~= 2 then
        return
    end

    if not rootSelectObj.vararg or rootSelectObj.vararg.type ~= 'call' then
        return
    end
    local rootCallObj = rootSelectObj.vararg

    if not rootCallObj.node or rootCallObj.node.type ~= 'call' then
        return
    end
    local pairsCallObj = rootCallObj.node

    if not pairsCallObj.node
        or (pairsCallObj.node.special ~= 'pairs' and pairsCallObj.node.special ~= 'ipairs') then
        return
    end

    if not pairsCallObj.args or not pairsCallObj.args[1] then
        return
    end
    local tableObj = pairsCallObj.args[1]

    return tableObj, rootSelectObj.index
end

function m.checkSameSimpleAsKeyOrValueInForParis(status, ref, start, pushQueue)
    local tableObj, index = getTableAndIndexIfIsForPairsKeyOrValue(ref)
    if not tableObj then
        return
    end

    local newStatus = m.status(status)
    m.searchRefs(newStatus, tableObj, 'def')
    for _, def in ipairs(newStatus.results) do
        if def.bindDocs then
            for _, binddoc in ipairs(def.bindDocs) do
                if binddoc.type == 'doc.type' then
                    if binddoc.types[1] and binddoc.types[1].type == 'doc.type.table' then
                        if index == 1 then
                            pushQueue(binddoc.types[1].key, start, true)
                        elseif index == 2 then
                            pushQueue(binddoc.types[1].value, start, true)
                        end
                    end
                end
            end
        end
    end
end

---
---@param func parser.guide.object
---@param argIndex integer
---@return integer?
local function findGenericFromArgIndexToReturnIndex(func, argIndex)
    if not func.bindDocs then
        return nil
    end
    local paramType
    for _, doc in ipairs(func.bindDocs) do
        if doc.type == 'doc.param' then
            if doc.extends and doc.extends.paramIndex == argIndex then
                paramType = doc.extends
                break
            end
        end
    end
    if not paramType then
        return nil
    end
    for _, typeUnit in ipairs(paramType.types) do
        if typeUnit.typeGeneric then
            local generic = typeUnit.typeGeneric[typeUnit[1]]
            if generic then
                for _, typeName in ipairs(generic) do
                    local docType = typeName.parent
                    if docType.returnIndex then
                        return docType.returnIndex
                    end
                end
            end
        end
    end
    return nil
end

function m.checkSameSimpleAsCallArg(status, ref, start, pushQueue)
    local call, index = m.getCallAndArgIndex(ref)
    if not call then
        return
    end
    if call.parent.type ~= 'select' then
        return
    end
    if (status.share.inSetValue or 0) > 0 then
        return
    end
    if status.share.inBeSetValue and status.share.inBeSetValue > 5 then
        return
    end
    status.share.inBeSetValue = (status.share.inBeSetValue or 0) + 1
    local newStatus = m.status(status)
    m.searchRefs(newStatus, call.node, 'def')
    for _, func in ipairs(newStatus.results) do
        local rindex = findGenericFromArgIndexToReturnIndex(func, index)
        if rindex then
            if rindex == 1 then
                pushQueue(call.parent.parent, start, true)
            else
                if call.extParent then
                    for _, slt in ipairs(call.extParent) do
                        if slt.index == rindex then
                            pushQueue(slt.parent, start, true)
                        end
                    end
                end
            end
        end
    end
    status.share.inBeSetValue = (status.share.inBeSetValue or 0) - 1
end

local function hasTypeName(doc, name)
    if doc.type == 'doc.type' then
        for _, tunit in ipairs(doc.types) do
            if  tunit.type == 'doc.type.name'
            and tunit[1] == name then
                return true
            end
        end
    end
    if doc.type == 'doc.type.name'
    or doc.type == 'doc.class.name' then
        if doc[1] == name then
            return true
        end
    end
    return false
end

function m.checkSameSimpleInString(status, ref, start, pushQueue, mode)
    -- 特殊处理 ('xxx').xxx 的形式
    if  ref.type ~= 'string'
    and not hasTypeName(ref, 'string') then
        return
    end
    if not status.interface.docType then
        return
    end
    if status.share.searchingBindedDoc then
        return
    end
    if not status.share.markString then
        status.share.markString = {}
    end
    local marked = ref
    if ref.type == 'string' then
        marked = 'string'
    end
    if status.share.markString[marked] then
        return
    end
    status.share.markString[marked] = true
    local newStatus = m.status(status)
    local docs = status.interface.docType('stringlib')
    local mark = {}
    for i = 1, #docs do
        local doc = docs[i]
        m.searchFields(newStatus, doc)
    end
    for _, res in ipairs(newStatus.results) do
        if mark[res] then
            goto CONTINUE
        end
        mark[res] = true
        pushQueue(res, start + 1)
        ::CONTINUE::
    end
    status.share.markString[marked] = nil
    return true
end

function m.pushResult(status, mode, ref, simple)
    local results = status.results
    if mode == 'def' then
        if ref.type == 'setglobal'
        or ref.type == 'setlocal'
        or ref.type == 'local' then
            results[#results+1] = ref
        elseif ref.type == 'setfield'
        or     ref.type == 'tablefield' then
            results[#results+1] = ref
        elseif ref.type == 'setmethod' then
            results[#results+1] = ref
        elseif ref.type == 'setindex'
        or     ref.type == 'tableindex' then
            results[#results+1] = ref
        elseif ref.type == 'call' then
            if ref.node.special == 'rawset' then
                results[#results+1] = ref
            end
        elseif ref.type == 'function' then
            results[#results+1] = ref
        elseif ref.type == 'table' then
            results[#results+1] = ref
        elseif ref.type == 'doc.type.function'
        or     ref.type == 'doc.class.name'
        or     ref.type == 'doc.alias.name'
        or     ref.type == 'doc.field'
        or     ref.type == 'doc.type.table'
        or     ref.type == 'doc.type.array' then
            results[#results+1] = ref
        elseif ref.type == 'doc.type' then
            if #ref.enums > 0 or #ref.resumes > 0 then
                results[#results+1] = ref
            end
        end
        if ref.parent and ref.parent.type == 'return' then
            if m.getParentFunction(ref) ~= m.getParentFunction(simple.node) then
                results[#results+1] = ref
            end
        end
        if  m.isLiteral(ref)
        and ref.parent and ref.parent.type == 'callargs'
        and ref ~= simple.node then
            results[#results+1] = ref
        end
    elseif mode == 'ref' then
        if ref.type == 'setfield'
        or ref.type == 'getfield'
        or ref.type == 'tablefield' then
            results[#results+1] = ref
        elseif ref.type == 'setmethod'
        or     ref.type == 'getmethod' then
            results[#results+1] = ref
        elseif ref.type == 'setindex'
        or     ref.type == 'getindex'
        or     ref.type == 'tableindex' then
            results[#results+1] = ref
        elseif ref.type == 'setglobal'
        or     ref.type == 'getglobal'
        or     ref.type == 'local'
        or     ref.type == 'setlocal'
        or     ref.type == 'getlocal' then
            results[#results+1] = ref
        elseif ref.type == 'function' then
            results[#results+1] = ref
        elseif ref.type == 'table' then
            results[#results+1] = ref
        elseif ref.type == 'call' then
            if ref.node.special == 'rawset'
            or ref.node.special == 'rawget' then
                results[#results+1] = ref
            end
        elseif ref.type == 'doc.type.function'
        or     ref.type == 'doc.class.name'
        or     ref.type == 'doc.alias.name'
        or     ref.type == 'doc.field'
        or     ref.type == 'doc.type.table'
        or     ref.type == 'doc.type.array' then
            results[#results+1] = ref
        elseif ref.type == 'doc.type' then
            if #ref.enums > 0 or #ref.resumes > 0 then
                results[#results+1] = ref
            end
        end
        if ref.parent and ref.parent.type == 'return' then
            results[#results+1] = ref
        end
        if  m.isLiteral(ref)
        and ref.parent
        and ref.parent.type == 'callargs'
        and ref ~= simple.node then
            results[#results+1] = ref
        end
    elseif mode == 'field' then
        if ref.type == 'setfield'
        or ref.type == 'getfield'
        or ref.type == 'tablefield' then
            results[#results+1] = ref
        elseif ref.type == 'setmethod'
        or     ref.type == 'getmethod' then
            results[#results+1] = ref
        elseif ref.type == 'setindex'
        or     ref.type == 'tableindex' then
            results[#results+1] = ref
        elseif ref.type == 'getindex' then
            -- do not trust `t[1]`
            if ref.index and ref.index.type == 'string' then
                results[#results+1] = ref
            end
        elseif ref.type == 'setglobal'
        or     ref.type == 'getglobal' then
            results[#results+1] = ref
        elseif ref.type == 'call' then
            if ref.node.special == 'rawset'
            or ref.node.special == 'rawget' then
                results[#results+1] = ref
            end
        elseif ref.type == 'doc.field' then
            results[#results+1] = ref
        end
    elseif mode == 'deffield' then
        if ref.type == 'setfield'
        or ref.type == 'tablefield' then
            results[#results+1] = ref
        elseif ref.type == 'setmethod' then
            results[#results+1] = ref
        elseif ref.type == 'setindex'
        or     ref.type == 'tableindex' then
            results[#results+1] = ref
        elseif ref.type == 'setglobal' then
            results[#results+1] = ref
        elseif ref.type == 'call' then
            if ref.node.special == 'rawset' then
                results[#results+1] = ref
            end
        elseif ref.type == 'doc.field' then
            results[#results+1] = ref
        end
    end
end

function m.checkSameSimpleName(ref, sm)
    if sm == m.ANY then
        return true
    end

    if m.getSimpleName(ref) == sm then
        return true
    end
    if  ref.type == 'doc.type'
    and ref.array == true then
        return true
    end
    return false
end

function m.isValidSetRef(ref)
    if m.isSet(ref) then
        return true
    end
end

function m.checkSameSimple(status, simple, ref, start, force, mode, pushQueue)
    if start > #simple then
        return
    end
    for i = start, #simple do
        local sm = simple[i]
        if not force and not m.checkSameSimpleName(ref, sm) then
            return
        end
        force = false
        local cmode = mode
        local skipSearch
        if i < #simple then
            cmode = 'ref'
        else
            if mode == 'deffield' then
                if not m.isSet(ref) then
                    skipSearch = true
                end
            end
        end
        -- 检查 doc
        local skipInfer = m.checkSameSimpleByBindDocs(status, ref, i, pushQueue, cmode)
                    or    m.checkSameSimpleByDoc(status, ref, i, pushQueue, cmode)
        -- 检查自己是字符串的分支情况
        m.checkSameSimpleInString(status, ref, i, pushQueue, cmode)
        if not skipInfer and not skipSearch then
            -- 穿透 self:func 与 mt:func
            m.searchSameFieldsCrossMethod(status, ref, i, pushQueue, cmode)
            -- 穿透赋值
            m.searchSameFieldsInValue(status, ref, i, pushQueue, cmode)
            -- 检查自己是字面量表的情况
            m.checkSameSimpleInValueOfTable(status, ref, i, pushQueue)
            -- 检查自己作为 setmetatable 第一个参数的情况
            m.checkSameSimpleInArg1OfSetMetaTable(status, ref, i, pushQueue)
            -- 检查自己作为 setmetatable 调用的情况
            m.checkSameSimpleInValueOfCallMetaTable(status, ref, i, pushQueue)
            -- 检查自己是特殊变量的分支的情况
            m.checkSameSimpleInSpecialBranch(status, ref, i, pushQueue)
            -- self 的特殊处理
            m.checkSameSimpleInParamSelf(status, ref, i, pushQueue)
            -- 自己是 call 的情况
            m.checkSameSimpleInCall(status, ref, i, pushQueue, cmode)
            if cmode == 'ref' then
                -- 检查形如 { a = f } 的情况
                m.checkSameSimpleAsTableField(status, ref, i, pushQueue)
                -- 检查形如 return m 的情况
                m.checkSameSimpleAsReturn(status, ref, i, pushQueue)
                -- 检查形如 a = f 的情况
                m.checkSameSimpleAsSetValue(status, ref, i, pushQueue)
                -- 检查形如 for k,v in pairs()/ipairs() do end 的情况
                m.checkSameSimpleAsKeyOrValueInForParis(status, ref, i, pushQueue)
                -- 检查自己是函数参数的情况（泛型） local x = call(V)
                m.checkSameSimpleAsCallArg(status, ref, i, pushQueue)
            end
        end
        if i == #simple then
            break
        end
        ref = m.getNextRef(ref)
        if not ref then
            return
        end
    end
    m.pushResult(status, mode, ref, simple)
    local value = m.getObjectValue(ref)
    if value then
        m.pushResult(status, mode, value, simple)
    end
end

local queuesPool = {}
local startsPool = {}
local forcesPool = {}
local poolSize = 0

local function allocQueue()
    if poolSize <= 0 then
        return {}, {}, {}
    else
        local queues = queuesPool[poolSize]
        local starts = startsPool[poolSize]
        local forces = forcesPool[poolSize]
        poolSize = poolSize - 1
        return queues, starts, forces
    end
end

local function deallocQueue(queues, starts, forces)
    poolSize = poolSize + 1
    queuesPool[poolSize] = queues
    startsPool[poolSize] = starts
    forcesPool[poolSize] = forces
end

function m.searchSameFields(status, simple, mode)
    local queues, starts, forces = allocQueue()
    local queueLen = 0
    local locks = {}
    local function pushQueue(obj, start, force)
        if obj.type == 'getlocal'
        or obj.type == 'setlocal' then
            obj = obj.node
        end
        local lock = locks[start]
        if not lock then
            lock = {}
            locks[start] = lock
        end
        if lock[obj] then
            return
        end
        lock[obj] = true
        queueLen = queueLen + 1
        queues[queueLen] = obj
        starts[queueLen] = start
        forces[queueLen] = force
        if obj.type == 'local' and obj.ref then
            for _, ref in ipairs(obj.ref) do
                queueLen = queueLen + 1
                queues[queueLen] = ref
                starts[queueLen] = start
                forces[queueLen] = force
            end
        end
        if m.isGlobal(obj) then
            local refs = m.checkSameSimpleInGlobal(status, obj)
            if refs then
                for _, ref in ipairs(refs) do
                    if not lock[ref] then
                        lock[ref] = true
                        queueLen = queueLen + 1
                        queues[queueLen] = ref
                        starts[queueLen] = start
                        forces[queueLen] = force
                    end
                end
            end
        end
    end
    if simple.mode == 'global' then
        -- 全局变量开头
        pushQueue(simple.node, 1)
    elseif simple.mode == 'local' then
        -- 局部变量开头
        pushQueue(simple.node, 1)
    else
        pushQueue(simple.node, 1)
    end
    local max = 0
    for i = 1, 1e6 do
        if queueLen <= 0 then
            break
        end
        local obj   = queues[queueLen]
        local start = starts[queueLen]
        local force = forces[queueLen]
        queues[queueLen] = nil
        starts[queueLen] = nil
        forces[queueLen] = nil
        queueLen = queueLen - 1
        max = max + 1
        status.share.count = status.share.count + 1
        if status.share.count % 10000 == 0 then
            --if TEST then
            --    print('####', status.share.count, osClock() - status.clock)
            --end
            if status.interface and status.interface.pulse then
                status.interface.pulse()
            end
        end
        --if status.share.count >= 100000 then
        --    logWarn('Count too large!')
        --    break
        --end
        m.checkSameSimple(status, simple, obj, start, force, mode, pushQueue)
        if max >= 10000 then
            logWarn('Queue too large!')
            break
        end
    end
    --deallocQueue(queues, starts, forces)
end

function m.getCallerInSameFile(status, func)
    -- 搜索所有所在函数的调用者
    local funcRefs = m.status(status)
    m.searchRefOfValue(funcRefs, func)

    local calls = {}
    if #funcRefs.results == 0 then
        return calls
    end
    for _, res in ipairs(funcRefs.results) do
        local call = res.parent
        if call.type == 'call' then
            calls[#calls+1] = call
        end
    end
    return calls
end

function m.getCallerCrossFiles(status, main)
    if status.interface.link then
        return status.interface.link(main.uri)
    end
    return {}
end

function m.searchRefsAsFunctionReturn(status, obj, mode)
    if not status.deep then
        return
    end
    if mode == 'def' then
        return
    end
    if m.checkReturnMark(status, obj, true) then
        return
    end
    status.results[#status.results+1] = obj
    -- 搜索所在函数
    local currentFunc = m.getParentFunction(obj)
    local rtn = obj.parent
    if rtn.type ~= 'return' then
        return
    end
    -- 看看他是第几个返回值
    local index
    for i = 1, #rtn do
        if obj == rtn[i] then
            index = i
            break
        end
    end
    if not index then
        return
    end
    local calls
    if currentFunc.type == 'main' then
        calls = m.getCallerCrossFiles(status, currentFunc)
    else
        calls = m.getCallerInSameFile(status, currentFunc)
    end
    -- 搜索调用者的返回值
    if #calls == 0 then
        return
    end
    local selects = {}
    for i = 1, #calls do
        local parent = calls[i].parent
        if parent.type == 'select' and parent.index == index then
            selects[#selects+1] = parent.parent
        end
        local extParent = calls[i].extParent
        if extParent then
            for j = 1, #extParent do
                local ext = extParent[j]
                if ext.type == 'select' and ext.index == index then
                    selects[#selects+1] = ext.parent
                end
            end
        end
    end
    -- 搜索调用者的引用
    for i = 1, #selects do
        m.searchRefs(status, selects[i], 'ref')
    end
end

function m.searchRefsAsFunctionSet(status, obj, mode)
    local parent = obj.parent
    if not parent then
        return
    end
    if parent.type == 'local'
    or parent.type == 'setlocal'
    or parent.type == 'setglobal'
    or parent.type == 'setfield'
    or parent.type == 'setmethod'
    or parent.type == 'tablefield' then
        m.searchRefs(status, parent, mode)
    elseif parent.type == 'setindex'
    or     parent.type == 'tableindex' then
        if parent.index == obj then
            m.searchRefs(status, parent, mode)
        end
    end
end

function m.searchRefsAsFunction(status, obj, mode)
    if  obj.type ~= 'function'
    and obj.type ~= 'table' then
        return
    end
    m.searchRefsAsFunctionSet(status, obj, mode)
    -- 检查自己作为返回函数时的引用
    m.searchRefsAsFunctionReturn(status, obj, mode)
end

function m.cleanResults(results)
    local mark = {}
    for i = #results, 1, -1 do
        local res = results[i]
        if res.tag == 'self'
        or mark[res] then
            results[i] = results[#results]
            results[#results] = nil
        else
            mark[res] = true
        end
    end
end

--function m.getRefCache(status, obj, mode)
--    local cache = status.interface.cache and status.interface.cache()
--    if not cache then
--        return
--    end
--    if m.isGlobal(obj) then
--        obj = m.getKeyName(obj)
--    end
--    if not cache[mode] then
--        cache[mode] = {}
--    end
--    local sourceCache = cache[mode][obj]
--    if sourceCache then
--        return sourceCache
--    end
--    sourceCache = {}
--    cache[mode][obj] = sourceCache
--    return nil, function (results)
--        for i = 1, #results do
--            sourceCache[i] = results[i]
--        end
--    end
--end

function m.getRefCache(status, obj, mode)
    local isDeep = status.deep
    if mode == 'infer' then
        if not isDeep then
            return nil, nil
        end
    end
    local globalCache = status.interface.cache and status.interface.cache() or {}
    if m.isGlobal(obj) then
        obj = m.getKeyName(obj)
    end
    if not obj then
        return {}
    end
    if not globalCache[mode] then
        globalCache[mode] = {}
    end
    local sourceCache = globalCache[mode][obj]
    if sourceCache then
        return sourceCache
    end
    if not status.share.cacheLock[mode] then
        status.share.cacheLock[mode] = {}
    end
    if status.share.cacheLock[mode][obj] then
        return {}
    end
    status.share.cacheLock[mode][obj] = {}
    return nil, function (results)
        sourceCache = {}
        for i = 1, #results do
            sourceCache[i] = results[i]
        end
        globalCache[mode][obj] = sourceCache
        if not isDeep then
            return
        end
        if mode == 'ref'
        or mode == 'def' then
            for i = 1, #results do
                local res = results[i]
                if not globalCache[mode][res] then
                    globalCache[mode][res] = sourceCache
                end
            end
        end
    end
end

function m.searchRefs(status, obj, mode)
    if not obj then
        return
    end
    local cache, makeCache = m.getRefCache(status, obj, mode)
    if cache then
        for i = 1, #cache do
            status.results[#status.results+1] = cache[i]
        end
        return
    end

    -- 检查单步引用
    tracy.ZoneBeginN('searchRefs getStepRef')
    local res = m.getStepRef(status, obj, mode)
    if res then
        for i = 1, #res do
            status.results[#status.results+1] = res[i]
        end
    end
    tracy.ZoneEnd()
    -- 检查simple
    tracy.ZoneBeginN('searchRefs searchSameFields')
    if m.checkStatusDepth(status) then
        local simple = m.getSimple(obj)
        if simple then
            m.searchSameFields(status, simple, mode)
        end
    end
    tracy.ZoneEnd()

    m.cleanResults(status.results)

    if makeCache then
        makeCache(status.results)
    end
end

function m.searchRefOfValue(status, obj)
    local var = obj.parent
    if var.type == 'local'
    or var.type == 'set' then
        return m.searchRefs(status, var, 'ref')
    end
end

function m.allocInfer(o)
    if type(o.type) == 'table' then
        local infers = {}
        for i = 1, #o.type do
            infers[i] = {
                type   = o.type[i],
                value  = o.value,
                source = o.source,
                level  = o.level
            }
        end
        return infers
    else
        return {
            [1] = o,
        }
    end
end

function m.mergeTypes(types)
    local hasAny = types['any']

    types['any'] = nil

    if not next(types) then
        return 'any'
    end
    -- 同时包含 number 与 integer 时，去掉 integer
    if types['number'] and types['integer'] then
        types['integer'] = nil
    end

    local results = {}
    for tp in pairs(types) do
        results[#results+1] = tp
    end
    -- 只有显性的 nil 与 any 时，取 any
    if #results == 1 then
        if results[1] == 'nil' and hasAny then
            return 'any'
        else
            return results[1]
        end
    end

    tableSort(results, function (a, b)
        local sa = TypeSort[a] or 100
        local sb = TypeSort[b] or 100
        if sa == sb then
            return a < b
        else
            return sa < sb
        end
    end)

    return tableConcat(results, '|')
end

function m.getClassExtends(class)
    if class.type == 'doc.class.name' then
        class = class.parent
    end
    if not class.extends then
        return nil
    end
    local names = {}
    for _, ext in ipairs(class.extends) do
        names[#names+1] = ext[1]
    end
    return names
end

function m.viewInferType(infers)
    if not infers then
        return 'any'
    end
    local types = {}
    local hasDoc
    local hasDocTable
    for i = 1, #infers do
        local infer = infers[i]
        local src = infer.source
        if src.type == 'doc.class'
        or src.type == 'doc.class.name'
        or src.type == 'doc.type.name'
        or src.type == 'doc.type.array'
        or src.type == 'doc.type.table' then
            if infer.type ~= 'any' then
                hasDoc = true
            end
            if src.type == 'doc.type.array'
            or src.type == 'doc.type.table' then
                hasDocTable = true
            end
        end
    end
    if hasDoc then
        for i = 1, #infers do
            local infer = infers[i]
            local src = infer.source
            if src.type == 'doc.class'
            or src.type == 'doc.class.name'
            or src.type == 'doc.type.name'
            or src.type == 'doc.type.array'
            or src.type == 'doc.type.table'
            or src.type == 'doc.type.enum'
            or src.type == 'doc.resume' then
                local tp = infer.type or 'any'
                if hasDocTable and tp == 'table' then
                    goto CONTINUE
                end
                if types[tp] == nil then
                    types[tp] = true
                end
            end
            if src.type == 'doc.class'
            or src.type == 'doc.class.name' then
                local extends = m.getClassExtends(src)
                if extends then
                    for _, tp in ipairs(extends) do
                        types[tp] = false
                    end
                end
            end
            ::CONTINUE::
        end
        for k, v in pairs(types) do
            if not v then
                types[k] = nil
            end
        end
    else
        for i = 1, #infers do
            local infer = infers[i]
            if infer.source.typeGeneric then
                goto CONTINUE
            end
            local tp = infer.type or 'any'
            types[tp] = true
            ::CONTINUE::
        end
    end
    return m.mergeTypes(types)
end

function m.checkTrue(status, source)
    local newStatus = m.status(status)
    m.searchInfer(newStatus, source)
    -- 当前认为的结果
    local current
    for _, infer in ipairs(newStatus.results) do
        -- 新的结果
        local new
        if infer.type == 'nil' then
            new = false
        elseif infer.type == 'boolean' then
            if infer.value == true then
                new = true
            elseif infer.value == false then
                new = false
            end
        end
        if new ~= nil then
            if current == nil then
                current = new
            else
                -- 如果2个结果完全相反，则返回 nil 表示不确定
                if new ~= current then
                    return nil
                end
            end
        end
    end
    return current
end

--- 获取特定类型的字面量值
function m.getInferLiteral(status, source, type)
    local newStatus = m.status(status)
    m.searchInfer(newStatus, source)
    for _, infer in ipairs(newStatus.results) do
        if infer.value ~= nil then
            if type == nil or infer.type == type then
                return infer.value
            end
        end
    end
    return nil
end

--- 是否包含某种类型
function m.hasType(status, source, type)
    m.searchInfer(status, source)
    for _, infer in ipairs(status.results) do
        if infer.type == type then
            return true
        end
    end
    return false
end

function m.isSameValue(status, a, b)
    local statusA = m.status(status)
    m.searchInfer(statusA, a)
    local statusB = m.status(status)
    m.searchInfer(statusB, b)
    local infers = {}
    for _, infer in ipairs(statusA.results) do
        local literal = infer.value
        if literal then
            infers[literal] = false
        end
    end
    for _, infer in ipairs(statusB.results) do
        local literal = infer.value
        if literal then
            if infers[literal] == nil then
                return false
            end
            infers[literal] = true
        end
    end
    for k, v in pairs(infers) do
        if v == false then
            return false
        end
    end
    return true
end

function m.inferCheckLiteralTableWithDocVararg(status, source)
    if #source ~= 1 then
        return
    end
    local vararg = source[1]
    if vararg.type ~= 'varargs' then
        return
    end
    local results = m.getVarargDocType(status, source)
    status.results[#status.results+1] = {
        type   = m.viewInferType(results) .. '[]',
        source = source,
        level  = 100,
    }
    return true
end

function m.inferCheckLiteral(status, source)
    if source.type == 'string' then
        status.results = m.allocInfer {
            type   = 'string',
            value  = source[1],
            source = source,
            level  = 100,
        }
        return true
    elseif source.type == 'nil' then
        status.results = m.allocInfer {
            type   = 'nil',
            value  = NIL,
            source = source,
            level  = 100,
        }
        return true
    elseif source.type == 'boolean' then
        status.results = m.allocInfer {
            type   = 'boolean',
            value  = source[1],
            source = source,
            level  = 100,
        }
        return true
    elseif source.type == 'number' then
        if mathType(source[1]) == 'integer' then
            status.results = m.allocInfer {
                type   = 'integer',
                value  = source[1],
                source = source,
                level  = 100,
            }
            return true
        else
            status.results = m.allocInfer {
                type   = 'number',
                value  = source[1],
                source = source,
                level  = 100,
            }
            return true
        end
    elseif source.type == 'integer' then
        status.results = m.allocInfer {
            type   = 'integer',
            source = source,
            level  = 100,
        }
        return true
    elseif source.type == 'table' then
        if m.inferCheckLiteralTableWithDocVararg(status, source) then
            return true
        end
        status.results = m.allocInfer {
            type   = 'table',
            source = source,
            level  = 100,
        }
        return true
    elseif source.type == 'function' then
        status.results = m.allocInfer {
            type   = 'function',
            source = source,
            level  = 100,
        }
        return true
    elseif source.type == '...' then
        status.results = m.allocInfer {
            type   = '...',
            source = source,
            level  = 100,
        }
        return true
    end
end

local function getDocAliasExtends(status, typeUnit)
    if not status.interface.docType then
        return nil
    end
    if typeUnit.type ~= 'doc.type.name' then
        return nil
    end
    for _, doc in ipairs(status.interface.docType(typeUnit[1])) do
        if doc.type == 'doc.alias.name' then
            return doc.parent.extends
        end
    end
    return nil
end

function m.getDocTypeUnitName(status, unit)
    local typeName
    if unit.type == 'doc.type.name' then
        typeName = unit[1]
    elseif unit.type == 'doc.type.function' then
        typeName = 'function'
    elseif unit.type == 'doc.type.array' then
        typeName = m.getDocTypeUnitName(status, unit.node) .. '[]'
    elseif unit.type == 'doc.type.table' then
        typeName = ('%s<%s, %s>'):format(
            m.getDocTypeUnitName(status, unit.node),
            m.viewInferType(m.getDocTypeNames(status, unit.key)),
            m.viewInferType(m.getDocTypeNames(status, unit.value))
        )
    end
    if unit.typeGeneric then
        typeName = ('<%s>'):format(typeName)
    end
    return typeName
end

function m.getDocTypeNames(status, doc)
    local results = {}
    if not doc then
        return results
    end
    for _, unit in ipairs(doc.types) do
        local alias = getDocAliasExtends(status, unit)
        if alias then
            local aliasResults = m.getDocTypeNames(status, alias)
            for _, res in ipairs(aliasResults) do
                results[#results+1] = res
            end
        else
            local typeName = m.getDocTypeUnitName(status, unit)
            results[#results+1] = {
                type   = typeName,
                source = unit,
                level  = 100,
            }
        end
    end
    for _, enum in ipairs(doc.enums) do
        results[#results+1] = {
            type   = enum[1],
            source = enum,
            level  = 100,
        }
    end
    for _, resume in ipairs(doc.resumes) do
        if not resume.additional then
            results[#results+1] = {
                type   = resume[1],
                source = resume,
                level  = 100,
            }
        end
    end
    return results
end

function m.inferCheckDoc(status, source)
    if source.type == 'doc.class.name' then
        status.results[#status.results+1] = {
            type   = source[1],
            source = source,
            level  = 100,
        }
        return true
    end
    if source.type == 'doc.class' then
        status.results[#status.results+1] = {
            type   = source.class[1],
            source = source,
            level  = 100,
        }
        return true
    end
    if source.type == 'doc.type' then
        local results = m.getDocTypeNames(status, source)
        for _, res in ipairs(results) do
            status.results[#status.results+1] = res
        end
        return true
    end
    if source.type == 'doc.type.function'
    or source.type == 'doc.type.table'
    or source.type == 'doc.type.array' then
        local typeName = m.getDocTypeUnitName(status, source)
        status.results[#status.results+1] = {
            type   = typeName,
            source = source,
            level  = 100,
        }
        return true
    end
    if source.type == 'doc.field' then
        local results = m.getDocTypeNames(status, source.extends)
        for _, res in ipairs(results) do
            status.results[#status.results+1] = res
        end
        return true
    end
    if source.type == 'doc.alias.name' then
        local results = m.getDocTypeNames(status, m.getDocState(source).extends)
        for _, res in ipairs(results) do
            status.results[#status.results+1] = res
        end
        return true
    end
end

function m.getVarargDocType(status, source)
    local func = m.getParentFunction(source)
    if not func then
        return
    end
    if not func.args then
        return
    end
    for _, arg in ipairs(func.args) do
        if arg.type == '...' then
            if arg.bindDocs then
                for _, doc in ipairs(arg.bindDocs) do
                    if doc.type == 'doc.vararg' then
                        return m.getDocTypeNames(status, doc.vararg)
                    end
                end
            end
        end
    end
end

function m.inferCheckUpDocOfVararg(status, source)
    if not source.vararg then
        return
    end
    local results = m.getVarargDocType(status, source)
    if not results then
        return
    end
    for _, res in ipairs(results) do
        status.results[#status.results+1] = res
    end
    return true
end

function m.inferCheckUpDoc(status, source)
    if m.inferCheckUpDocOfVararg(status, source) then
        return true
    end
    local parent = source.parent
    if parent then
        if parent.type == 'local'
        or parent.type == 'setlocal'
        or parent.type == 'setglobal' then
            source = parent
        end
        if parent.type == 'setfield'
        or parent.type == 'tablefield' then
            if parent.field == source
            or parent.value == source then
                source = parent
            end
        end
        if parent.type == 'setmethod' then
            if parent.method == source
            or parent.value == source then
                source = parent
            end
        end
        if parent.type == 'setindex'
        or parent.type == 'tableindex' then
            if parent.index == source
            or parent.value == source then
                source = parent
            end
        end
    end
    local binds = source.bindDocs
    if not binds then
        return
    end
    status.results = {}
    for i = #binds, 1, -1 do
        local doc = binds[i]
        if doc.type == 'doc.class' then
            status.results[#status.results+1] = {
                type   = doc.class[1],
                source = doc,
                level  = 100,
            }
            -- ---@class Class
            -- local x = { field = 1 }
            -- 这种情况下，将字面量表接受为Class的定义
            if source.value and source.value.type == 'table' then
                status.results[#status.results+1] = {
                    type   = source.value.type,
                    source = source.value,
                    level  = 100,
                }
            end
            return true
        elseif doc.type == 'doc.type' then
            local results = m.getDocTypeNames(status, doc)
            for _, res in ipairs(results) do
                status.results[#status.results+1] = res
            end
            return true
        elseif doc.type == 'doc.param' then
            -- function (x) 的情况
            if  source.type == 'local'
            and m.getKeyName(source) == doc.param[1] then
                if source.parent.type == 'funcargs'
                or source.parent.type == 'in'
                or source.parent.type == 'loop' then
                    local results = m.getDocTypeNames(status, doc.extends)
                    for _, res in ipairs(results) do
                        status.results[#status.results+1] = res
                    end
                    return true
                end
            end
        end
    end
end

function m.inferCheckUnary(status, source)
    if source.type ~= 'unary' then
        return
    end
    local op = source.op
    if op.type == 'not' then
        local checkTrue = m.checkTrue(status, source[1])
        local value = nil
        if checkTrue == true then
            value = false
        elseif checkTrue == false then
            value = true
        end
        status.results = m.allocInfer {
            type   = 'boolean',
            value  = value,
            source = source,
            level  = 100,
        }
        return true
    elseif op.type == '#' then
        status.results = m.allocInfer {
            type   = 'integer',
            source = source,
            level  = 100,
        }
        return true
    elseif op.type == '~' then
        local l = m.getInferLiteral(status, source[1], 'integer')
        status.results = m.allocInfer {
            type   = 'integer',
            value  = l and ~l or nil,
            source = source,
            level  = 100,
        }
        return true
    elseif op.type == '-' then
        local v = m.getInferLiteral(status, source[1], 'integer')
        if v then
            status.results = m.allocInfer {
                type   = 'integer',
                value  = - v,
                source = source,
                level  = 100,
            }
            return true
        end
        v = m.getInferLiteral(status, source[1], 'number')
        status.results = m.allocInfer {
            type   = 'number',
            value  = v and -v or nil,
            source = source,
            level  = 100,
        }
        return true
    end
end

local function mathCheck(status, a, b)
    local v1 = m.getInferLiteral(status, a, 'integer')
            or m.getInferLiteral(status, a, 'number')
    local v2 = m.getInferLiteral(status, b, 'integer')
            or m.getInferLiteral(status, a, 'number')
    v1 = tonumber(v1)
    v2 = tonumber(v2)
    local int = m.hasType(status, a, 'integer')
            and m.hasType(status, b, 'integer')
            and not m.hasType(status, a, 'number')
            and not m.hasType(status, b, 'number')
    return int and 'integer' or 'number', v1, v2
end

function m.inferCheckBinary(status, source)
    if source.type ~= 'binary' then
        return
    end
    local op = source.op
    if op.type == 'and' then
        local isTrue = m.checkTrue(status, source[1])
        if isTrue == true then
            m.searchInfer(status, source[2])
            return true
        elseif isTrue == false then
            m.searchInfer(status, source[1])
            return true
        else
            m.searchInfer(status, source[1])
            m.searchInfer(status, source[2])
            return true
        end
    elseif op.type == 'or' then
        local isTrue = m.checkTrue(status, source[1])
        if isTrue == true then
            m.searchInfer(status, source[1])
            return true
        elseif isTrue == false then
            m.searchInfer(status, source[2])
            return true
        else
            m.searchInfer(status, source[1])
            m.searchInfer(status, source[2])
            return true
        end
    elseif op.type == '==' then
        local value = m.isSameValue(status, source[1], source[2])
        if value ~= nil then
            status.results = m.allocInfer {
                type   = 'boolean',
                value  = value,
                source = source,
                level  = 100,
            }
            return true
        end
        --local isSame = m.isSameDef(status, source[1], source[2])
        --if isSame == true then
        --    value = true
        --else
        --    value = nil
        --end
        status.results = m.allocInfer {
            type   = 'boolean',
            value  = value,
            source = source,
            level  = 100,
        }
        return true
    elseif op.type == '~=' then
        local value = m.isSameValue(status, source[1], source[2])
        if value ~= nil then
            status.results = m.allocInfer {
                type   = 'boolean',
                value  = not value,
                source = source,
                level  = 100,
            }
            return true
        end
        --local isSame = m.isSameDef(status, source[1], source[2])
        --if isSame == true then
        --    value = false
        --else
        --    value = nil
        --end
        status.results = m.allocInfer {
            type   = 'boolean',
            value  = value,
            source = source,
            level  = 100,
        }
        return true
    elseif op.type == '<=' then
        local v1 = m.getInferLiteral(status, source[1], 'integer')
                or m.getInferLiteral(status, source[1], 'number')
        local v2 = m.getInferLiteral(status, source[2], 'integer')
                or m.getInferLiteral(status, source[2], 'number')
        v1 = tonumber(v1)
        v2 = tonumber(v2)
        local v
        if v1 and v2 then
            v = v1 <= v2
        end
        status.results = m.allocInfer {
            type   = 'boolean',
            value  = v,
            source = source,
            level  = 100,
        }
        return true
    elseif op.type == '>=' then
        local v1 = m.getInferLiteral(status, source[1], 'integer')
                or m.getInferLiteral(status, source[1], 'number')
        local v2 = m.getInferLiteral(status, source[2], 'integer')
                or m.getInferLiteral(status, source[2], 'number')
        v1 = tonumber(v1)
        v2 = tonumber(v2)
        local v
        if v1 and v2 then
            v = v1 >= v2
        end
        status.results = m.allocInfer {
            type   = 'boolean',
            value  = v,
            source = source,
            level  = 100,
        }
        return true
    elseif op.type == '<' then
        local v1 = m.getInferLiteral(status, source[1], 'integer')
                or m.getInferLiteral(status, source[1], 'number')
        local v2 = m.getInferLiteral(status, source[2], 'integer')
                or m.getInferLiteral(status, source[2], 'number')
        v1 = tonumber(v1)
        v2 = tonumber(v2)
        local v
        if v1 and v2 then
            v = v1 < v2
        end
        status.results = m.allocInfer {
            type   = 'boolean',
            value  = v,
            source = source,
            level  = 100,
        }
        return true
    elseif op.type == '>' then
        local v1 = m.getInferLiteral(status, source[1], 'integer')
                or m.getInferLiteral(status, source[1], 'number')
        local v2 = m.getInferLiteral(status, source[2], 'integer')
                or m.getInferLiteral(status, source[2], 'number')
        v1 = tonumber(v1)
        v2 = tonumber(v2)
        local v
        if v1 and v2 then
            v = v1 > v2
        end
        status.results = m.allocInfer {
            type   = 'boolean',
            value  = v,
            source = source,
            level  = 100,
        }
        return true
    elseif op.type == '|' then
        local v1 = m.getInferLiteral(status, source[1], 'integer')
        local v2 = m.getInferLiteral(status, source[2], 'integer')
        v1 = tointeger(v1)
        v2 = tointeger(v2)
        local v
        if v1 and v2 then
            v = v1 | v2
        end
        status.results = m.allocInfer {
            type   = 'integer',
            value  = v,
            source = source,
            level  = 100,
        }
        return true
    elseif op.type == '~' then
        local v1 = m.getInferLiteral(status, source[1], 'integer')
        local v2 = m.getInferLiteral(status, source[2], 'integer')
        v1 = tointeger(v1)
        v2 = tointeger(v2)
        local v
        if v1 and v2 then
            v = v1 ~ v2
        end
        status.results = m.allocInfer {
            type   = 'integer',
            value  = v,
            source = source,
            level  = 100,
        }
        return true
    elseif op.type == '&' then
        local v1 = m.getInferLiteral(status, source[1], 'integer')
        local v2 = m.getInferLiteral(status, source[2], 'integer')
        v1 = tointeger(v1)
        v2 = tointeger(v2)
        local v
        if v1 and v2 then
            v = v1 & v2
        end
        status.results = m.allocInfer {
            type   = 'integer',
            value  = v,
            source = source,
            level  = 100,
        }
        return true
    elseif op.type == '<<' then
        local v1 = m.getInferLiteral(status, source[1], 'integer')
        local v2 = m.getInferLiteral(status, source[2], 'integer')
        v1 = tointeger(v1)
        v2 = tointeger(v2)
        local v
        if v1 and v2 then
            v = v1 << v2
        end
        status.results = m.allocInfer {
            type   = 'integer',
            value  = v,
            source = source,
            level  = 100,
        }
        return true
    elseif op.type == '>>' then
        local v1 = m.getInferLiteral(status, source[1], 'integer')
        local v2 = m.getInferLiteral(status, source[2], 'integer')
        v1 = tointeger(v1)
        v2 = tointeger(v2)
        local v
        if v1 and v2 then
            v = v1 >> v2
        end
        status.results = m.allocInfer {
            type   = 'integer',
            value  = v,
            source = source,
            level  = 100,
        }
        return true
    elseif op.type == '..' then
        local v1 = m.getInferLiteral(status, source[1], 'string')
        local v2 = m.getInferLiteral(status, source[2], 'string')
        v1 = type(v1) == 'string' and v1 or nil
        v2 = type(v2) == 'string' and v2 or nil
        local v
        if v1 and v2 then
            v = v1 .. v2
        end
        status.results = m.allocInfer {
            type   = 'string',
            value  = v,
            source = source,
            level  = 100,
        }
        return true
    elseif op.type == '^' then
        local v1 = m.getInferLiteral(status, source[1], 'integer')
                or m.getInferLiteral(status, source[1], 'number')
        local v2 = m.getInferLiteral(status, source[2], 'integer')
                or m.getInferLiteral(status, source[2], 'number')
        v1 = tonumber(v1)
        v2 = tonumber(v2)
        local v
        if v1 and v2 then
            v = v1 ^ v2
        end
        status.results = m.allocInfer {
            type   = 'number',
            value  = v,
            source = source,
            level  = 100,
        }
        return true
    elseif op.type == '/' then
        local v1 = m.getInferLiteral(status, source[1], 'integer')
                or m.getInferLiteral(status, source[1], 'number')
        local v2 = m.getInferLiteral(status, source[2], 'integer')
                or m.getInferLiteral(status, source[2], 'number')
        v1 = tonumber(v1)
        v2 = tonumber(v2)
        local v
        if v1 and v2 and v2 ~= 0 then
            v = v1 / v2
        end
        status.results = m.allocInfer {
            type   = 'number',
            value  = v,
            source = source,
            level  = 100,
        }
        return true
    -- 其他数学运算根据2侧的值决定，当2侧的值均为整数时返回整数
    elseif op.type == '+' then
        local int, v1, v2 = mathCheck(status, source[1], source[2])
        status.results = m.allocInfer{
            type   = int,
            value  = (v1 and v2) and (v1 + v2) or nil,
            source = source,
            level  = 100,
        }
        return true
    elseif op.type == '-' then
        local int, v1, v2 = mathCheck(status, source[1], source[2])
        status.results = m.allocInfer{
            type   = int,
            value  = (v1 and v2) and (v1 - v2) or nil,
            source = source,
            level  = 100,
        }
        return true
    elseif op.type == '*' then
        local int, v1, v2 = mathCheck(status, source[1], source[2])
        status.results = m.allocInfer {
            type   = int,
            value  = (v1 and v2) and (v1 * v2) or nil,
            source = source,
            level  = 100,
        }
        return true
    elseif op.type == '%' then
        local int, v1, v2 = mathCheck(status, source[1], source[2])
        status.results = m.allocInfer {
            type   = int,
            value  = (v1 and v2 and v2 ~= 0) and (v1 % v2) or nil,
            source = source,
            level  = 100,
        }
        return true
    elseif op.type == '//' then
        local int, v1, v2 = mathCheck(status, source[1], source[2])
        status.results = m.allocInfer {
            type   = int,
            value  = (v1 and v2 and v2 ~= 0) and (v1 // v2) or nil,
            source = source,
            level  = 100,
        }
        return true
    end
end

function m.inferByDef(status, obj)
    if not status.share.inferedDef then
        status.share.inferedDef = {}
    end
    if status.share.inferedDef[obj] then
        return
    end
    status.share.inferedDef[obj] = true
    local mark = {}
    local newStatus = m.status(status, status.interface)
    tracy.ZoneBeginN('inferByDef searchRefs')
    m.searchRefs(newStatus, obj, 'def')
    tracy.ZoneEnd()
    for _, src in ipairs(newStatus.results) do
        local inferStatus = m.status(newStatus)
        m.searchInfer(inferStatus, src)
        if #inferStatus.results == 0 then
            status.results[#status.results+1] = {
                type   = 'any',
                source = src,
                level  = 0,
            }
        else
            for _, infer in ipairs(inferStatus.results) do
                if not mark[infer.source] then
                    mark[infer.source] = true
                    status.results[#status.results+1] = infer
                end
            end
        end
    end
end

local function inferBySetOfLocal(status, source)
    if status.share[source] then
        return
    end
    status.share[source] = true
    local newStatus = m.status(status)
    if source.value then
        m.searchInfer(newStatus, source.value)
    end
    if source.ref then
        for _, ref in ipairs(source.ref) do
            if ref.type == 'setlocal' then
                break
            end
            m.searchInfer(newStatus, ref)
        end
        for _, infer in ipairs(newStatus.results) do
            status.results[#status.results+1] = infer
        end
    end
end

function m.inferByLocalRef(status, source)
    if #status.results ~= 0 then
        return
    end
    if source.type == 'local' then
        inferBySetOfLocal(status, source)
    elseif source.type == 'setlocal'
    or     source.type == 'getlocal' then
        inferBySetOfLocal(status, source.node)
    end
end

function m.inferByCall(status, source)
    if not source.parent then
        return
    end
    if source.parent.type ~= 'call' then
        return
    end
    if source.parent.node == source then
        status.results[#status.results+1] = {
            type   = 'function',
            source = source,
            level  = 10,
        }
        return
    end
end

function m.inferByGetTable(status, source)
    if source.type == 'field'
    or source.type == 'method' then
        source = source.parent
    end
    local next = source.next
    if not next then
        return
    end
    if next.type == 'getfield'
    or next.type == 'getindex'
    or next.type == 'setmethod'
    or next.type == 'setfield'
    or next.type == 'setindex' then
        status.results[#status.results+1] = {
            type   = 'table',
            source = source,
            level  = 10,
        }
    elseif next.type == 'getmethod' then
        status.results[#status.results+1] = {
            type   = 'table',
            source = source,
            level  = 5,
        }
        status.results[#status.results+1] = {
            type   = 'string',
            source = source,
            level  = 5,
        }
    end
end

function m.inferByUnary(status, source)
    local parent = source.parent
    if not parent or parent.type ~= 'unary' then
        return
    end
    local op = parent.op
    if op.type == '#' then
        status.results[#status.results+1] = {
            type   = 'string',
            source = source,
            level  = 5,
        }
        status.results[#status.results+1] = {
            type   = 'table',
            source = source,
            level  = 5,
        }
    elseif op.type == '~' then
        status.results[#status.results+1] = {
            type   = 'integer',
            source = source,
            level  = 10,
        }
    elseif op.type == '-' then
        status.results[#status.results+1] = {
            type   = 'number',
            source = source,
            level  = 10,
        }
    end
end

function m.inferByBinary(status, source)
    local parent = source.parent
    if not parent or parent.type ~= 'binary' then
        return
    end
    local op = parent.op
    if op.type == '<='
    or op.type == '>='
    or op.type == '<'
    or op.type == '>'
    or op.type == '^'
    or op.type == '/'
    or op.type == '+'
    or op.type == '-'
    or op.type == '*'
    or op.type == '%' then
        status.results[#status.results+1] = {
            type   = 'number',
            source = source,
            level  = 10,
        }
    elseif op.type == '|'
    or     op.type == '~'
    or     op.type == '&'
    or     op.type == '<<'
    or     op.type == '>>'
    -- 整数的可能性比较高
    or     op.type == '//' then
        status.results[#status.results+1] = {
            type   = 'integer',
            source = source,
            level  = 10,
        }
    elseif op.type == '..' then
        status.results[#status.results+1] = {
            type   = 'string',
            source = source,
            level  = 10,
        }
    end
end

local function mergeFunctionReturnsByDoc(status, source, index, call)
    if not source or source.type ~= 'function' then
        return
    end
    if not source.bindDocs then
        return
    end
    local returns = {}
    for _, doc in ipairs(source.bindDocs) do
        if doc.type == 'doc.return' then
            for _, rtn in ipairs(doc.returns) do
                returns[#returns+1] = rtn
            end
        end
    end
    local rtn = returns[index]
    if not rtn then
        return
    end
    local results = m.getDocTypeNames(status, rtn)
    if #results == 0 then
        return
    end
    for _, res in ipairs(results) do
        status.results[#status.results+1] = res
    end
    return true
end

local function mergeDocTypeFunctionReturns(status, source, index)
    if not source.bindDocs then
        return
    end
    for _, doc in ipairs(source.bindDocs) do
        if doc.type == 'doc.type' then
            for _, typeUnit in ipairs(doc.types) do
                if typeUnit.type == 'doc.type.function' then
                    local rtn = typeUnit.returns[index]
                    if rtn then
                        local results = m.getDocTypeNames(status, rtn)
                        for _, res in ipairs(results) do
                            status.results[#status.results+1] = res
                        end
                    end
                end
            end
        end
    end
end

local function mergeFunctionReturns(status, source, index, call)
    local returns = source.returns
    if not returns then
        return
    end
    for i = 1, #returns do
        local rtn = returns[i]
        if rtn[index] then
            if rtn[index].type == 'call' then
                if not m.checkReturnMark(status, rtn[index], true) then
                    m.inferByCallReturnAndIndex(status, rtn[index], index)
                end
            else
                local newStatus = m.status(status)
                m.searchInfer(newStatus, rtn[index])
                if #newStatus.results == 0 then
                    status.results[#status.results+1] = {
                        type   = 'any',
                        source = rtn[index],
                        level  = 0,
                    }
                else
                    for _, infer in ipairs(newStatus.results) do
                        status.results[#status.results+1] = infer
                    end
                end
            end
        end
    end
end

function m.inferByCallReturnAndIndex(status, call, index)
    local node = call.node
    local newStatus = m.status(status, status.interface)
    m.searchRefs(newStatus, node, 'def')
    local hasDocReturn
    for _, src in ipairs(newStatus.results) do
        if mergeDocTypeFunctionReturns(status, src, index) then
            hasDocReturn = true
        elseif mergeFunctionReturnsByDoc(status, src.value, index, call) then
            hasDocReturn = true
        end
    end
    if not hasDocReturn then
        for _, src in ipairs(newStatus.results) do
            if src.value and src.value.type == 'function' then
                if not m.checkReturnMark(status, src.value, true) then
                    mergeFunctionReturns(status, src.value, index, call)
                end
            end
        end
    end
end

function m.inferByCallReturn(status, source)
    if source.type == 'call' then
        m.inferByCallReturnAndIndex(status, source, 1)
        return
    end
    if source.type ~= 'select' then
        if source.value and source.value.type == 'select' then
            source = source.value
        else
            return
        end
    end
    if not source.vararg or source.vararg.type ~= 'call' then
        return
    end
    m.inferByCallReturnAndIndex(status, source.vararg, source.index)
end

function m.inferByPCallReturn(status, source)
    if source.type ~= 'select' then
        if source.value and source.value.type == 'select' then
            source = source.value
        else
            return
        end
    end
    local call = source.vararg
    if not call or call.type ~= 'call' then
        return
    end
    if not call.args then
        return
    end
    local node = call.node
    local specialName = node.special
    local func, index
    if specialName == 'pcall' then
        func = call.args[1]
        index = source.index - 1
    elseif specialName == 'xpcall' then
        func = call.args[1]
        index = source.index - 2
    else
        return
    end
    local newStatus = m.status(status, status.interface)
    m.searchRefs(newStatus, func, 'def')
    for _, src in ipairs(newStatus.results) do
        if src.value and src.value.type == 'function' then
            mergeFunctionReturns(status, src.value, index)
        end
    end
end

function m.cleanInfers(infers, obj)
    -- kick lower level infers
    local level = 0
    if obj.type ~= 'select' then
        for i = 1, #infers do
            local infer = infers[i]
            if infer.level > level then
                level = infer.level
            end
        end
    end
    -- merge infers
    local mark = {}
    for i = #infers, 1, -1 do
        local infer = infers[i]
        if infer.level < level then
            infers[i] = infers[#infers]
            infers[#infers] = nil
            goto CONTINUE
        end
        local key = ('%p'):format(infer.type, infer.source)
        if mark[key] then
            infers[i] = infers[#infers]
            infers[#infers] = nil
        else
            mark[key] = true
        end
        ::CONTINUE::
    end
    -- kick doc.generic
    if #infers > 1 then
        for i = #infers, 1, -1 do
            local infer = infers[i]
            if infer.source.typeGeneric then
                infers[i] = infers[#infers]
                infers[#infers] = nil
            end
        end
    end
end

function m.searchInfer(status, obj)
    while obj.type == 'paren' do
        obj = obj.exp
        if not obj then
            return
        end
    end
    while true do
        local value = m.getObjectValue(obj)
        if not value or value == obj then
            break
        end
        obj = value
    end
    if not obj then
        return
    end

    local cache, makeCache = m.getRefCache(status, obj, 'infer')
    if cache then
        for i = 1, #cache do
            status.results[#status.results+1] = cache[i]
        end
        return
    end

    if DEVELOP then
        status.share.clock = status.share.clock or osClock()
    end

    if not status.share.lockInfer then
        status.share.lockInfer = {}
    end
    if status.share.lockInfer[obj] then
        return
    end
    status.share.lockInfer[obj] = true

    local checked = m.inferCheckDoc(status, obj)
                 or m.inferCheckUpDoc(status, obj)
                 or m.inferCheckLiteral(status, obj)
                 or m.inferCheckUnary(status, obj)
                 or m.inferCheckBinary(status, obj)
    if checked then
        m.cleanInfers(status.results, obj)
        if makeCache then
            makeCache(status.results)
        end
        return
    end

    m.inferByLocalRef(status, obj)
    if status.deep then
        tracy.ZoneBeginN('inferByDef')
        m.inferByDef(status, obj)
        tracy.ZoneEnd()
    end
    --m.inferByCall(status, obj)
    m.inferByGetTable(status, obj)
    m.inferByUnary(status, obj)
    m.inferByBinary(status, obj)
    m.cleanInfers(status.results, obj)
    if makeCache then
        makeCache(status.results)
    end
end

--- 请求对象的引用，包括 `a.b.c` 形式
--- 与 `return function` 形式。
--- 不穿透 `setmetatable` ，考虑由
--- 业务层进行反向 def 搜索。
function m.requestReference(obj, interface, deep)
    local status = m.status(nil, interface, deep)
    -- 根据 field 搜索引用
    m.searchRefs(status, obj, 'ref')

    m.searchRefsAsFunction(status, obj, 'ref')

    if m.debugMode then
        --print('count:', status.share.count)
    end

    return status.results, status.share.count
end

--- 请求对象的定义，包括 `a.b.c` 形式
--- 与 `return function` 形式。
--- 穿透 `setmetatable` 。
function m.requestDefinition(obj, interface, deep)
    local status = m.status(nil, interface, deep)
    -- 根据 field 搜索定义
    m.searchRefs(status, obj, 'def')

    return status.results, status.share.count
end

--- 请求对象的字段
---@param filterKey nil|string|table
function m.requestFields(obj, interface, deep, filterKey)
    local status = m.status(nil, interface, deep)

    m.searchFields(status, obj, filterKey)

    return status.results, status.share.count
end

--- 请求对象的定义字段
---@param filterKey nil|string|table
function m.requestDefFields(obj, interface, deep, filterKey)
    local status = m.status(nil, interface, deep)

    m.searchDefFields(status, obj, filterKey)

    return status.results, status.share.count
end

--- 请求对象的类型推测
function m.requestInfer(obj, interface, deep)
    local status = m.status(nil, interface, deep)
    m.searchInfer(status, obj)

    return status.results, status.share.count
end

function m.debugView(obj)
    return require 'files'.position(m.getUri(obj), obj.start), m.getUri(obj)
end

return m
