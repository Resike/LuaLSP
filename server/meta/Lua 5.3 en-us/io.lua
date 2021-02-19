---@meta

---
---
---[View documents](http://www.lua.org/manual/5.3/manual.html#pdf-io)
---
---@class io*
---
---standard input.
---
---[View documents](http://www.lua.org/manual/5.3/manual.html#pdf-io.stdin)
---
---@field stdin  file*
---
---standard output.
---
---[View documents](http://www.lua.org/manual/5.3/manual.html#pdf-io.stdout)
---
---@field stdout file*
---
---standard error.
---
---[View documents](http://www.lua.org/manual/5.3/manual.html#pdf-io.stderr)
---
---@field stderr file*
io = {}

---@alias openmode
---|>'"r"'   # Read mode.
---| '"w"'   # Write mode.
---| '"a"'   # Append mode.
---| '"r+"'  # Update mode, all previous data is preserved.
---| '"w+"'  # Update mode, all previous data is erased.
---| '"a+"'  # Append update mode, previous data is preserved, writing is only allowed at the end of file.
---| '"rb"'  # Read mode. (in binary mode.)
---| '"wb"'  # Write mode. (in binary mode.)
---| '"ab"'  # Append mode. (in binary mode.)
---| '"r+b"' # Update mode, all previous data is preserved. (in binary mode.)
---| '"w+b"' # Update mode, all previous data is erased. (in binary mode.)
---| '"a+b"' # Append update mode, previous data is preserved, writing is only allowed at the end of file. (in binary mode.)

---
---Close `file` or default output file.
---
---[View documents](http://www.lua.org/manual/5.3/manual.html#pdf-io.close)
---
---@param file? file*
---@return boolean?  suc
---@return exitcode? exitcode
---@return integer?  code
function io.close(file) end

---
---Saves any written data to default output file.
---
---[View documents](http://www.lua.org/manual/5.3/manual.html#pdf-io.flush)
---
function io.flush() end

---
---Sets `file` as the default input file.
---
---[View documents](http://www.lua.org/manual/5.3/manual.html#pdf-io.input)
---
---@overload fun():file*
---@param file string|file*
function io.input(file) end

---
---------
---```lua
---for c in io.lines(filename, ...) do
---    body
---end
---```
---
---[View documents](http://www.lua.org/manual/5.3/manual.html#pdf-io.lines)
---
---@param filename string?
---@vararg readmode
---@return fun():string|number
function io.lines(filename, ...) end

---
---Opens a file, in the mode specified in the string `mode`.
---
---[View documents](http://www.lua.org/manual/5.3/manual.html#pdf-io.open)
---
---@param filename string
---@param mode     openmode
---@return file*?
---@return string? errmsg
function io.open(filename, mode) end

---
---Sets `file` as the default output file.
---
---[View documents](http://www.lua.org/manual/5.3/manual.html#pdf-io.output)
---
---@overload fun():file*
---@param file string|file*
function io.output(file) end

---@alias popenmode
---| '"r"' # Read data from this program by `file`.
---| '"w"' # Write data to this program by `file`.

---
---Starts program prog in a separated process.
---
---[View documents](http://www.lua.org/manual/5.3/manual.html#pdf-io.popen)
---
---@param prog  string
---@param mode? popenmode
---@return file*?
---@return string? errmsg
function io.popen(prog, mode) end

---
---Reads the `file`, according to the given formats, which specify what to read.
---
---[View documents](http://www.lua.org/manual/5.3/manual.html#pdf-io.read)
---
---@vararg readmode
---@return string|number
---@return ...
function io.read(...) end

---
---Miss locale <io.tmpfile>
---
---[View documents](http://www.lua.org/manual/5.3/manual.html#pdf-io.tmpfile)
---
---@return file*
function io.tmpfile() end

---@alias filetype
---| '"file"'        # Is an open file handle.
---| '"closed file"' # Is a closed file handle.
---| 'nil'           # Is not a file handle.

---
---Checks whether `obj` is a valid file handle.
---
---[View documents](http://www.lua.org/manual/5.3/manual.html#pdf-io.type)
---
---@param file file*
---@return filetype
function io.type(file) end

---
---Writes the value of each of its arguments to default output file.
---
---[View documents](http://www.lua.org/manual/5.3/manual.html#pdf-io.write)
---
---@return file*
---@return string? errmsg
function io.write(...) end

return io
