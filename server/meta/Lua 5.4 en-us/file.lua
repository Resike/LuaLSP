---@meta

---
---
---[View documents](http://www.lua.org/manual/5.4/manual.html#pdf-file)
---
---@class file*
local file = {}

---@alias readmode number
---| '"n"'  # Reads a numeral and returns it as number.
---| '"a"'  # Reads the whole file.
---|>'"l"'  # Reads the next line skipping the end of line.
---| '"L"'  # Reads the next line keeping the end of line.

---@alias exitcode | '"exit"'|'"signal"'

---
---Close `file`.
---
---[View documents](http://www.lua.org/manual/5.4/manual.html#pdf-file:close)
---
---@return boolean?  suc
---@return exitcode? exitcode
---@return integer?  code
function file:close() end

---
---Saves any written data to `file`.
---
---[View documents](http://www.lua.org/manual/5.4/manual.html#pdf-file:flush)
---
function file:flush() end

---
---------
---```lua
---for c in file:lines(...) do
---    body
---end
---```
---
---[View documents](http://www.lua.org/manual/5.4/manual.html#pdf-file:lines)
---
---@vararg readmode
---@return fun():string|number
function file:lines(...) end

---
---Reads the `file`, according to the given formats, which specify what to read.
---
---[View documents](http://www.lua.org/manual/5.4/manual.html#pdf-file:read)
---
---@vararg readmode
---@return string|number
function file:read(...) end

---@alias seekwhence
---| '"set"' # Base is beginning of the file.
---|>'"cur"' # Base is current position.
---| '"end"' # Base is end of file.

---
---Sets and gets the file position, measured from the beginning of the file.
---
---[View documents](http://www.lua.org/manual/5.4/manual.html#pdf-file:seek)
---
---@param whence? seekwhence
---@param offset? integer
---@return integer offset
---@return string? errmsg
function file:seek(whence, offset) end

---@alias vbuf
---| '"no"'   # Output operation appears immediately.
---| '"full"' # Performed only when the buffer is full.
---| '"line"' # Buffered until a newline is output.

---
---Sets the buffering mode for an output file.
---
---[View documents](http://www.lua.org/manual/5.4/manual.html#pdf-file:setvbuf)
---
---@param mode vbuf
---@param size integer
function file:setvbuf(mode, size) end

---
---Writes the value of each of its arguments to `file`.
---
---[View documents](http://www.lua.org/manual/5.4/manual.html#pdf-file:write)
---
---@vararg string|number
---@return file?
---@return string? errmsg
function file:write(...) end
