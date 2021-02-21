---@meta

---@class coroutine*
---[View documents](http://www.lua.org/manual/5.1/manual.html#pdf-coroutine)
coroutine = {}

---Creates a new coroutine, with body `f`. `f` must be a function. Returns this new coroutine, an object with type `"thread"`.
---@param f function
---@return thread
---[View documents](http://www.lua.org/manual/5.1/manual.html#pdf-coroutine.create)
function coroutine.create(f) end

---Returns true when the running coroutine can yield.
---@return boolean
---[View documents](http://www.lua.org/manual/5.1/manual.html#pdf-coroutine.isyieldable)
function coroutine.isyieldable() end


---Starts or continues the execution of coroutine `co`.
---@param co thread
---@param val1? any
---@return boolean success
---@return any result
---@return ...
---[View documents](http://www.lua.org/manual/5.1/manual.html#pdf-coroutine.resume)
function coroutine.resume(co, val1, ...) end

---Returns the running coroutine plus a boolean, true when the running coroutine is the main one.
---@return thread running
---@return boolean ismain
---[View documents](http://www.lua.org/manual/5.1/manual.html#pdf-coroutine.running)
function coroutine.running() end

---Returns the status of coroutine `co`.
---@param co thread
---@return
---| '"running"'   # Is running.
---| '"suspended"' # Is suspended or not started.
---| '"normal"'    # Is active but not running.
---| '"dead"'      # Has finished or stopped with an error.
---[View documents](http://www.lua.org/manual/5.1/manual.html#pdf-coroutine.status)
function coroutine.status(co) end

---Creates a new coroutine, with body `f`; `f` must be a function. Returns a function that resumes the coroutine each time it is called.
---@param f function
---@return ...
---[View documents](http://www.lua.org/manual/5.1/manual.html#pdf-coroutine.wrap)
function coroutine.wrap(f) end

---Suspends the execution of the calling coroutine.
---@return ...
---[View documents](http://www.lua.org/manual/5.1/manual.html#pdf-coroutine.yield)
function coroutine.yield(...) end

return coroutine
