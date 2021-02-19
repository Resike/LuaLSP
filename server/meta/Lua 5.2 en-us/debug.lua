---@meta

---
---
---[View documents](http://www.lua.org/manual/5.2/manual.html#pdf-debug)
---
---@class debug*
debug = {}

---@class debuginfo
---@field name            string
---@field namewhat        string
---@field source          string
---@field short_src       string
---@field linedefined     integer
---@field lastlinedefined integer
---@field what            string
---@field currentline     integer
---@field istailcall      boolean
---@field nups            integer
---@field nparams         integer
---@field isvararg        boolean
---@field func            function
---@field activelines     table

---
---Enters an interactive mode with the user, running each string that the user enters.
---
---[View documents](http://www.lua.org/manual/5.2/manual.html#pdf-debug.debug)
---
function debug.debug() end

---@version 5.1
---
---Returns the environment of object `o` .
---
---[View documents](http://www.lua.org/manual/5.2/manual.html#pdf-debug.getfenv)
---
---@param o any
---@return table
function debug.getfenv(o) end

---
---Returns the current hook settings of the thread.
---
---[View documents](http://www.lua.org/manual/5.2/manual.html#pdf-debug.gethook)
---
---@param co? thread
---@return function hook
---@return string mask
---@return integer count
function debug.gethook(co) end

---@alias infowhat string
---|+'"n"'     # `name` and `namewhat`
---|+'"S"'     # `source`, `short_src`, `linedefined`, `lastlinedefined`, and `what`'
---|+'"l"'     # `currentline`
---|+'"t"'     # `istailcall`
---|+'"u>5.2"' # `nups`, `nparams`, and `isvararg`
---|+'"f"'     # `func`
---|+'"L"'     # `activelines`

---
---Returns a table with information about a function.
---
---[View documents](http://www.lua.org/manual/5.2/manual.html#pdf-debug.getinfo)
---
---@overload fun(f: integer|function, what?: infowhat):debuginfo
---@param thread thread
---@param f      integer|function
---@param what?  infowhat
---@return debuginfo
function debug.getinfo(thread, f, what) end

---
---Returns the name and the value of the local variable with index `local` of the function at level `level` of the stack.
---
---[View documents](http://www.lua.org/manual/5.2/manual.html#pdf-debug.getlocal<5.1)
---
---@overload fun(level: integer, index: integer):string, any
---@param thread  thread
---@param level   integer
---@param index   integer
---@return string name
---@return any    value
function debug.getlocal(thread, level, index) end

---
---Returns the name and the value of the local variable with index `local` of the function at level `f` of the stack.
---
---[View documents](http://www.lua.org/manual/5.2/manual.html#pdf-debug.getlocal>5.2)
---
---@overload fun(f: integer|function, index: integer):string, any
---@param thread  thread
---@param f       integer|function
---@param index   integer
---@return string name
---@return any    value
function debug.getlocal(thread, f, index) end

---
---Returns the metatable of the given value.
---
---[View documents](http://www.lua.org/manual/5.2/manual.html#pdf-debug.getmetatable)
---
---@param object any
---@return table metatable
function debug.getmetatable(object) end

---
---Returns the registry table.
---
---[View documents](http://www.lua.org/manual/5.2/manual.html#pdf-debug.getregistry)
---
---@return table
function debug.getregistry() end

---
---Returns the name and the value of the upvalue with index `up` of the function.
---
---[View documents](http://www.lua.org/manual/5.2/manual.html#pdf-debug.getupvalue)
---
---@param f  function
---@param up integer
---@return string name
---@return any    value
function debug.getupvalue(f, up) end

---
---Returns the Lua value associated to u.
---
---[View documents](http://www.lua.org/manual/5.2/manual.html#pdf-debug.getuservalue<5.3)
---
---@param u userdata
---@return any
function debug.getuservalue(u) end

---
---### **Deprecated in `Lua 5.4.2`**
---
---Sets a new limit for the C stack. This limit controls how deeply nested calls can go in Lua, with the intent of avoiding a stack overflow.
---
---In case of success, this function returns the old limit. In case of error, it returns `false`.
---
---[View documents](http://www.lua.org/manual/5.2/manual.html#pdf-debug.setcstacklimit)
---
---@deprecated
---@param limit integer
---@return integer|boolean
function debug.setcstacklimit(limit) end

---
---Sets the environment of the given `object` to the given `table` .
---
---[View documents](http://www.lua.org/manual/5.2/manual.html#pdf-debug.setfenv)
---
---@version 5.1
---@generic T
---@param object T
---@param env    table
---@return T object
function debug.setfenv(object, env) end

---@alias hookmask string
---|+'"c"' # Calls hook when Lua calls a function.
---|+'"r"' # Calls hook when Lua returns from a function.
---|+'"l"' # Calls hook when Lua enters a new line of code.

---
---Sets the given function as a hook.
---
---[View documents](http://www.lua.org/manual/5.2/manual.html#pdf-debug.sethook)
---
---@overload fun(hook: function, mask: hookmask, count?: integer)
---@param thread thread
---@param hook   function
---@param mask   hookmask
---@param count? integer
function debug.sethook(thread, hook, mask, count) end

---
---Assigns the `value` to the local variable with index `local` of the function at `level` of the stack.
---
---[View documents](http://www.lua.org/manual/5.2/manual.html#pdf-debug.setlocal)
---
---@overload fun(level: integer, index: integer, value: any):string
---@param thread thread
---@param level  integer
---@param index  integer
---@param value  any
---@return string name
function debug.setlocal(thread, level, index, value) end

---
---Sets the metatable for the given value to the given table (which can be `nil`).
---
---[View documents](http://www.lua.org/manual/5.2/manual.html#pdf-debug.setmetatable)
---
---@generic T
---@param value T
---@param meta  table
---@return T value
function debug.setmetatable(value, meta) end

---
---Assigns the `value` to the upvalue with index `up` of the function.
---
---[View documents](http://www.lua.org/manual/5.2/manual.html#pdf-debug.setupvalue)
---
---@param f     function
---@param up    integer
---@param value any
---@return string name
function debug.setupvalue(f, up, value) end

---
---Sets the given value as the Lua value associated to the given udata.
---
---[View documents](http://www.lua.org/manual/5.2/manual.html#pdf-debug.setuservalue<5.3)
---
---@param udata userdata
---@param value any
---@return userdata udata
function debug.setuservalue(udata, value) end

---
---Returns a string with a traceback of the call stack. The optional message string is appended at the beginning of the traceback.
---
---[View documents](http://www.lua.org/manual/5.2/manual.html#pdf-debug.traceback)
---
---@param thread   thread
---@param message? any
---@param level?   integer
---@return string  message
function debug.traceback(thread, message, level) end

---@version >5.2
---
---Returns a unique identifier (as a light userdata) for the upvalue numbered `n` from the given function.
---
---[View documents](http://www.lua.org/manual/5.2/manual.html#pdf-debug.upvalueid)
---
---@param f function
---@param n integer
---@return lightuserdata id
function debug.upvalueid(f, n) end

---@version >5.2
---
---Make the `n1`-th upvalue of the Lua closure `f1` refer to the `n2`-th upvalue of the Lua closure `f2`.
---
---[View documents](http://www.lua.org/manual/5.2/manual.html#pdf-debug.upvaluejoin)
---
---@param f1 function
---@param n1 integer
---@param f2 function
---@param n2 integer
function debug.upvaluejoin(f1, n1, f2, n2) end

return debug
