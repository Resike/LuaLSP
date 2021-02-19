---@meta

---
---
---[View documents](http://www.lua.org/manual/5.1/manual.html#pdf-string)
---
---@class string*
string = {}

---
---Returns the internal numeric codes of the characters `s[i], s[i+1], ..., s[j]`.
---
---[View documents](http://www.lua.org/manual/5.1/manual.html#pdf-string.byte)
---
---@param s  string
---@param i? integer
---@param j? integer
---@return integer
---@return ...
function string.byte(s, i, j) end

---
---Returns a string with length equal to the number of arguments, in which each character has the internal numeric code equal to its corresponding argument.
---
---[View documents](http://www.lua.org/manual/5.1/manual.html#pdf-string.char)
---
---@param byte integer
---@vararg integer
---@return string
---@return ...
function string.char(byte, ...) end

---
---Returns a string containing a binary representation (a *binary chunk*) of the given function.
---
---[View documents](http://www.lua.org/manual/5.1/manual.html#pdf-string.dump)
---
---@param f      function
---@param strip? boolean
---@return string
function string.dump(f, strip) end

---
---Looks for the first match of `pattern` (see [§6.4.1](http://www.lua.org/manual/5.1/manual.html#6.4.1)) in the string.
---
---[View documents](http://www.lua.org/manual/5.1/manual.html#pdf-string.find)
---
---@param s       string
---@param pattern string
---@param init?   integer
---@param plain?  boolean
---@return integer start
---@return integer end
---@return ... captured
function string.find(s, pattern, init, plain) end

---
---Returns a formatted version of its variable number of arguments following the description given in its first argument.
---
---[View documents](http://www.lua.org/manual/5.1/manual.html#pdf-string.format)
---
---@param s string
---@vararg string
---@return string
function string.format(s, ...) end

---
---Returns an iterator function that, each time it is called, returns the next captures from `pattern` (see [§6.4.1](http://www.lua.org/manual/5.1/manual.html#6.4.1)) over the string s.
---
---As an example, the following loop will iterate over all the words from string s, printing one per line:
---```lua
---    s = "hello world from Lua"
---    for w in string.gmatch(s, "%a+") do
---        print(w)
---    end
---```
---
---[View documents](http://www.lua.org/manual/5.1/manual.html#pdf-string.gmatch)
---
---@param s       string
---@param pattern string
---@return fun():string, ...
function string.gmatch(s, pattern) end

---
---Returns a copy of s in which all (or the first `n`, if given) occurrences of the `pattern` (see [§6.4.1](http://www.lua.org/manual/5.1/manual.html#6.4.1)) have been replaced by a replacement string specified by `repl`.
---
---[View documents](http://www.lua.org/manual/5.1/manual.html#pdf-string.gsub)
---
---@param s       string
---@param pattern string
---@param repl    string|table|function
---@param n       integer
---@return string
---@return integer count
function string.gsub(s, pattern, repl, n) end

---
---Returns its length.
---
---[View documents](http://www.lua.org/manual/5.1/manual.html#pdf-string.len)
---
---@param s string
---@return integer
function string.len(s) end

---
---Returns a copy of this string with all uppercase letters changed to lowercase.
---
---[View documents](http://www.lua.org/manual/5.1/manual.html#pdf-string.lower)
---
---@param s string
---@return string
function string.lower(s) end

---
---Looks for the first match of `pattern` (see [§6.4.1](http://www.lua.org/manual/5.1/manual.html#6.4.1)) in the string.
---
---[View documents](http://www.lua.org/manual/5.1/manual.html#pdf-string.match)
---
---@param s       string
---@param pattern string
---@param init?   integer
---@return string captured
function string.match(s, pattern, init) end

---@version >5.3
---
---Returns a binary string containing the values `v1`, `v2`, etc. packed (that is, serialized in binary form) according to the format string `fmt` (see [§6.4.2](http://www.lua.org/manual/5.1/manual.html#6.4.2)) .
---
---[View documents](http://www.lua.org/manual/5.1/manual.html#pdf-string.pack)
---
---@param fmt string
---@param v1  string
---@param v2? string
---@vararg string
---@return string binary
function string.pack(fmt, v1, v2, ...) end

---@version >5.3
---
---Returns the size of a string resulting from `string.pack` with the given format string `fmt` (see [§6.4.2](http://www.lua.org/manual/5.1/manual.html#6.4.2)) .
---
---[View documents](http://www.lua.org/manual/5.1/manual.html#pdf-string.packsize)
---
---@param fmt string
---@return integer
function string.packsize(fmt) end

---
---Returns a string that is the concatenation of `n` copies of the string `s` .
---
---[View documents](http://www.lua.org/manual/5.1/manual.html#pdf-string.rep<5.1)
---
---@param s    string
---@param n    integer
---@return string
function string.rep(s, n) end

---
---Returns a string that is the string `s` reversed.
---
---[View documents](http://www.lua.org/manual/5.1/manual.html#pdf-string.reverse)
---
---@param s string
---@return string
function string.reverse(s) end

---
---Returns the substring of the string that starts at `i` and continues until `j`.
---
---[View documents](http://www.lua.org/manual/5.1/manual.html#pdf-string.sub)
---
---@param s  string
---@param i  integer
---@param j? integer
---@return string
function string.sub(s, i, j) end

---@version >5.3
---
---Returns the values packed in string according to the format string `fmt` (see [§6.4.2](http://www.lua.org/manual/5.1/manual.html#6.4.2)) .
---
---[View documents](http://www.lua.org/manual/5.1/manual.html#pdf-string.unpack)
---
---@param fmt  string
---@param s    string
---@param pos? integer
---@return ...
---@return integer offset
function string.unpack(fmt, s, pos) end

---
---Returns a copy of this string with all lowercase letters changed to uppercase.
---
---[View documents](http://www.lua.org/manual/5.1/manual.html#pdf-string.upper)
---
---@param s string
---@return string
function string.upper(s) end

return string
