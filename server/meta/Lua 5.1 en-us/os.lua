---@meta

---
---
---[View documents](http://www.lua.org/manual/5.1/manual.html#pdf-os)
---
---@class os*
os = {}

---
---Returns an approximation of the amount in seconds of CPU time used by the program.
---
---[View documents](http://www.lua.org/manual/5.1/manual.html#pdf-os.clock)
---
---@return number
function os.clock() end

---
---Returns a string or a table containing date and time, formatted according to the given string `format`.
---
---[View documents](http://www.lua.org/manual/5.1/manual.html#pdf-os.date)
---
---@param format? string
---@param time?   integer
---@return string
function os.date(format, time) end

---
---Returns the difference, in seconds, from time `t1` to time `t2`.
---
---[View documents](http://www.lua.org/manual/5.1/manual.html#pdf-os.difftime)
---
---@param t2 integer
---@param t1 integer
---@return integer
function os.difftime(t2, t1) end

---
---Passes `command` to be executed by an operating system shell.'
---
---[View documents](http://www.lua.org/manual/5.1/manual.html#pdf-os.execute)
---
---@param command  string
---@return integer code
function os.execute(command) end

---
---Calls the C function `exit` to terminate the host program.
---
---[View documents](http://www.lua.org/manual/5.1/manual.html#pdf-os.exit<5.1)
---
---@param code? integer
function os.exit(code, close) end

---
---Returns the value of the process environment variable `varname`.
---
---[View documents](http://www.lua.org/manual/5.1/manual.html#pdf-os.getenv)
---
---@param varname string
---@return string
function os.getenv(varname) end

---
---Deletes the file with the given name.
---
---[View documents](http://www.lua.org/manual/5.1/manual.html#pdf-os.remove)
---
---@param filename string
---@return boolean suc
---@return string? errmsg
function os.remove(filename) end

---
---Renames the file or directory named `oldname` to `newname`.
---
---[View documents](http://www.lua.org/manual/5.1/manual.html#pdf-os.rename)
---
---@param oldname string
---@param newname string
---@return boolean suc
---@return string? errmsg
function os.rename(oldname, newname) end

---@alias localecategory
---|>'"all"'
---| '"collate"'
---| '"ctype"'
---| '"monetary"'
---| '"numeric"'
---| '"time"'

---
---Sets the current locale of the program.
---
---[View documents](http://www.lua.org/manual/5.1/manual.html#pdf-os.setlocale)
---
---@param locale    string|nil
---@param category? localecategory
---@return string localecategory
function os.setlocale(locale, category) end

---
---Returns the current time when called without arguments, or a time representing the local date and time specified by the given table.
---
---[View documents](http://www.lua.org/manual/5.1/manual.html#pdf-os.time)
---
---@param date? table
---@return integer
function os.time(date) end

---
---Returns a string with a file name that can be used for a temporary file.
---
---[View documents](http://www.lua.org/manual/5.1/manual.html#pdf-os.tmpname)
---
---@return string
function os.tmpname() end

return os
