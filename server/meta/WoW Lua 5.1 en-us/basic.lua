---@meta

---Command-line arguments of Lua Standalone.
---@type table
---[View documents](http://www.lua.org/manual/5.1/manual.html#pdf-arg)
arg = {}

---Raises an error if the value of its argument v is false (i.e., `nil` or `false`); otherwise, returns all its arguments. In case of error, `message` is the error object; when absent, it defaults to `"assertion failed!"`
---@generic T
---@param v T
---@param message any
---@return T
---[View documents](http://www.lua.org/manual/5.1/manual.html#pdf-assert)
function assert(v, message) end

---@alias cgopt
---|>'"collect"'      # Performs a full garbage-collection cycle.
---| '"stop"'         # Miss locale <cgopt.stop>
---| '"restart"'      # Restarts automatic execution.
---| '"count"'        # Miss locale <cgopt.count>
---| '"step"'         # Performs a garbage-collection step.
---| '"isrunning"'    # Returns whether the collector is running.
---| '"setpause"'     # Set `pause`.
---| '"setstepmul"'   # Set `step multiplier`.

---This function is a generic interface to the garbage collector. It performs different functions according to its first argument, `opt`.
---@param opt? cgopt
---@param arg? integer
---@return any
---[View documents](http://www.lua.org/manual/5.1/manual.html#pdf-collectgarbage)
function collectgarbage(opt, arg) end

---Terminates the last protected function called and returns message as the error object.
---Usually, `error` adds some information about the error position at the beginning of the message, if the message is a string.
---@param message any
---@param level? integer
---[View documents](http://www.lua.org/manual/5.1/manual.html#pdf-error)
function error(message, level) end

---A global variable (not a function) that holds the global environment (see [§2.2](http://www.lua.org/manual/5.1/manual.html#2.2)). Lua itself does not use this variable; changing its value does not affect any environment, nor vice versa.
---@class _G
---[View documents](http://www.lua.org/manual/5.1/manual.html#pdf-_G)
_G = {}

---@version 5.1
---Returns the current environment in use by the function. `f` can be a Lua function or a number that specifies the function at that stack level.
---@param f? function
---@return table
---[View documents](http://www.lua.org/manual/5.1/manual.html#pdf-getfenv)
function getfenv(f) end

---If object does not have a metatable, returns nil. Otherwise, if the object's metatable has a __metatable field, returns the associated value. Otherwise, returns the metatable of the given object.
---@param object any
---@return table metatable
---[View documents](http://www.lua.org/manual/5.1/manual.html#pdf-getmetatable)
function getmetatable(object) end

---Returns three values (an iterator function, the table `t`, and `0`) so that the construction
---```lua
---for i, v in ipairs(t) do body end
---```
---will iterate over the key–value pairs `(1,t[1]), (2,t[2]), ...`, up to the first absent index.
---@param t table
---@return fun(t: table, i?: integer):integer, any iterator
---@return table t
---@return integer i
---[View documents](http://www.lua.org/manual/5.1/manual.html#pdf-ipairs)
function ipairs(t) end

---@version 5.1
---Loads a chunk from the given string.
---@param text string
---@param chunkname? string
---@return function
---@return string error_message
---[View documents](http://www.lua.org/manual/5.1/manual.html#pdf-loadstring)
function loadstring(text, chunkname) end

---Allows a program to traverse all fields of a table. Its first argument is a table and its second argument is an index in this table. A call to `next` returns the next index of the table and its associated value. When called with `nil` as its second argument, `next` returns an initial index and its associated value. When called with the last index, or with `nil` in an empty table, `next` returns `nil`. If the second argument is absent, then it is interpreted as `nil`. In particular, you can use `next(t)` to check whether a table is empty.
---The order in which the indices are enumerated is not specified, *even for numeric indices*. (To traverse a table in numerical order, use a numerical `for`).
---The behavior of `next` is undefined if, during the traversal, you assign any value to a non-existent field in the table. You may however modify existing fields. In particular, you may set existing fields to nil.
---@param tbl table
---@param index? any
---@return any key
---@return any value
---[View documents](http://www.lua.org/manual/5.1/manual.html#pdf-next)
function next(tbl, index) end

---If `t` has a metamethod `__pairs`, calls it with t as argument and returns the first three results from the call.
---Otherwise, returns three values: the [next](http://www.lua.org/manual/5.1/manual.html#pdf-next) function, the table `t`, and `nil`, so that the construction
---```lua
---    for k,v in pairs(t) do body end
---```
---will iterate over all key–value pairs of table `t`.
---See function [next](http://www.lua.org/manual/5.1/manual.html#pdf-next) for the caveats of modifying the table during its traversal.
---@param t table
---@return function next
---@return table
---@return nil
---[View documents](http://www.lua.org/manual/5.1/manual.html#pdf-paris)
function pairs(t) return next end

---Calls the function `f` with the given arguments in *protected mode*. This means that any error inside `f` is not propagated; instead, `pcall` catches the error and returns a status code. Its first result is the status code (a boolean), which is true if the call succeeds without errors. In such case, `pcall` also returns all results from the call, after this first result. In case of any error, `pcall` returns `false` plus the error object.
---@param f function
---@param arg1? any
---@return boolean success
---@return any result
---@return ...
---[View documents](http://www.lua.org/manual/5.1/manual.html#pdf-pcall)
function pcall(f, arg1, ...) end

---Receives any number of arguments and prints their values to `stdout`, converting each argument to a string following the same rules of [tostring](http://www.lua.org/manual/5.1/manual.html#pdf-tostring).
---The function print is not intended for formatted output, but only as a quick way to show a value, for instance for debugging. For complete control over the output, use [string.format](http://www.lua.org/manual/5.1/manual.html#pdf-string.format) and [io.write](http://www.lua.org/manual/5.1/manual.html#pdf-io.write).
---[View documents](http://www.lua.org/manual/5.1/manual.html#pdf-print)
function print(...) end

---Checks whether v1 is equal to v2, without invoking the `__eq` metamethod.
---@param v1 any
---@param v2 any
---@return boolean
---[View documents](http://www.lua.org/manual/5.1/manual.html#pdf-rawequal)
function rawequal(v1, v2) end

---Gets the real value of `table[index]`, without invoking the `__index` metamethod.
---@param table table
---@param index any
---@return any
---[View documents](http://www.lua.org/manual/5.1/manual.html#pdf-rawget)
function rawget(table, index) end

---Sets the real value of `table[index]` to `value`, without using the `__newindex` metavalue. `table` must be a table, `index` any value different from `nil` and `NaN`, and `value` any Lua value.
---This function returns `table`.
---@param table table
---@param index any
---@param value any
---@return table
---[View documents](http://www.lua.org/manual/5.1/manual.html#pdf-rawset)
function rawset(table, index, value) end

---If `index` is a number, returns all arguments after argument number `index`; a negative number indexes from the end (`-1` is the last argument). Otherwise, `index` must be the string `"#"`, and `select` returns the total number of extra arguments it received.
---@param index integer|'"#"'
---@return any
---[View documents](http://www.lua.org/manual/5.1/manual.html#pdf-select)
function select(index, ...) end

---@version 5.1
---@param f function|integer
---@param table table
---@return function
---[View documents](http://www.lua.org/manual/5.1/manual.html#pdf-setfenv)
function setfenv(f, table) end

---Sets the metatable for the given table. If `metatable` is `nil`, removes the metatable of the given table. If the original metatable has a `__metatable` field, raises an error.
---This function returns `table`.
---To change the metatable of other types from Lua code, you must use the debug library ([§6.10](http://www.lua.org/manual/5.1/manual.html#6.10))
---@param table table
---@param metatable table
---@return table
---[View documents](http://www.lua.org/manual/5.1/manual.html#pdf-setmetatable)
function setmetatable(table, metatable) end

---When called with no `base`, `tonumber` tries to convert its argument to a number. If the argument is already a number or a string convertible to a number, then `tonumber` returns this number; otherwise, it returns `fail`.
---The conversion of strings can result in integers or floats, according to the lexical conventions of Lua (see [§3.1](http://www.lua.org/manual/5.1/manual.html#3.1)). The string may have leading and trailing spaces and a sign.
---@param e string|number
---@param base? integer
---@return number?
---[View documents](http://www.lua.org/manual/5.1/manual.html#pdf-tonumber)
function tonumber(e, base) end

---Receives a value of any type and converts it to a string in a human-readable format.
---If the metatable of `v` has a `__tostring` field, then `tostring` calls the corresponding value with `v` as argument, and uses the result of the call as its result. Otherwise, if the metatable of `v` has a `__name` field with a string value, `tostring` may use that string in its final result.
---For complete control of how numbers are converted, use [string.format](http://www.lua.org/manual/5.1/manual.html#pdf-string.format).
---@param v any
---@return string
---[View documents](http://www.lua.org/manual/5.1/manual.html#pdf-tostring)
function tostring(v) end

---@alias type
---| '"nil"'
---| '"number"'
---| '"string"'
---| '"boolean"'
---| '"table"'
---| '"function"'
---| '"thread"'
---| '"userdata"'
---Returns the type of its only argument, coded as a string. The possible results of this function are `"nil"` (a string, not the value `nil`), `"number"`, `"string"`, `"boolean"`, `"table"`, `"function"`, `"thread"`, and `"userdata"`.
---@param v any
---@return type type
---[View documents](http://www.lua.org/manual/5.1/manual.html#pdf-type)
function type(v) end

---A global variable (not a function) that holds a string containing the running Lua version.
---[View documents](http://www.lua.org/manual/5.1/manual.html#pdf-_VERSION)
_VERSION = 'Lua 5.1'

---Calls function `f` with the given arguments in protected mode with a new message handler.
---@param f function
---@param err function
---@return boolean success
---@return any result
---@return ...
---[View documents](http://www.lua.org/manual/5.1/manual.html#pdf-xpcall=5.1)
function xpcall(f, err) end

---@version 5.1
---Returns the elements from the given `list`. This function is equivalent to
---```lua
---    return list[i], list[i+1], ···, list[j]
---```
---@param list table
---@param i? integer
---@param j? integer
---[View documents](http://www.lua.org/manual/5.1/manual.html#pdf-unpack)
function unpack(list, i, j) end
