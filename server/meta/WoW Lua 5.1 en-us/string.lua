---@meta

---@class string*
---[View documents](http://www.lua.org/manual/5.1/manual.html#pdf-string)
string = {}

---Returns the internal numeric codes of the characters `s[i], s[i+1], ..., s[j]`.
---@param s string
---@param i? integer
---@param j? integer
---@return integer
---@return ...
---[View documents](http://www.lua.org/manual/5.1/manual.html#pdf-string.byte)
function string.byte(s, i, j) end

---Returns a string with length equal to the number of arguments, in which each character has the internal numeric code equal to its corresponding argument.
---@param byte integer
---@vararg integer
---@return string
---@return ...
---[View documents](http://www.lua.org/manual/5.1/manual.html#pdf-string.char)
function string.char(byte, ...) end

---Returns a string containing a binary representation (a *binary chunk*) of the given function.
---@param f function
---@param strip? boolean
---@return string
---[View documents](http://www.lua.org/manual/5.1/manual.html#pdf-string.dump)
function string.dump(f, strip) end

---Looks for the first match of `pattern` (see [§6.4.1](http://www.lua.org/manual/5.1/manual.html#6.4.1)) in the string.
---[View documents](http://www.lua.org/manual/5.1/manual.html#pdf-string.find)
---@param s string
---@param pattern string
---@param init? integer
---@param plain? boolean
---@return integer start
---@return integer end
---@return ... captured
function string.find(s, pattern, init, plain) end

---Returns a formatted version of its variable number of arguments following the description given in its first argument.
---@param s string
---@vararg string
---@return string
---[View documents](http://www.lua.org/manual/5.1/manual.html#pdf-string.format)
function string.format(s, ...) end

---Returns an iterator function that, each time it is called, returns the next captures from `pattern` (see [§6.4.1](http://www.lua.org/manual/5.1/manual.html#6.4.1)) over the string s.
---As an example, the following loop will iterate over all the words from string s, printing one per line:
---```lua
---s = "hello world from Lua"
---for w in string.gmatch(s, "%a+") do
---    print(w)
---end
---```
---@param s string
---@param pattern string
---@return fun():string, ...
---[View documents](http://www.lua.org/manual/5.1/manual.html#pdf-string.gmatch)
function string.gmatch(s, pattern) end

---Returns a copy of s in which all (or the first `n`, if given) occurrences of the `pattern` (see [§6.4.1](http://www.lua.org/manual/5.1/manual.html#6.4.1)) have been replaced by a replacement string specified by `repl`.
---@param s string
---@param pattern string
---@param repl string|table|function
---@param n integer
---@return string
---@return integer count
---[View documents](http://www.lua.org/manual/5.1/manual.html#pdf-string.gsub)
function string.gsub(s, pattern, repl, n) end

---Returns its length.
---@param s string
---@return integer
---[View documents](http://www.lua.org/manual/5.1/manual.html#pdf-string.len)
function string.len(s) end

---Returns a copy of this string with all uppercase letters changed to lowercase.
---@param s string
---@return string
---[View documents](http://www.lua.org/manual/5.1/manual.html#pdf-string.lower)
function string.lower(s) end

---Looks for the first match of `pattern` (see [§6.4.1](http://www.lua.org/manual/5.1/manual.html#6.4.1)) in the string.
---@param s string
---@param pattern string
---@param init? integer
---@return string captured
---[View documents](http://www.lua.org/manual/5.1/manual.html#pdf-string.match)
function string.match(s, pattern, init) end

---Returns a string that is the concatenation of `n` copies of the string `s` .
---@param s string
---@param n integer
---@return string
---[View documents](http://www.lua.org/manual/5.1/manual.html#pdf-string.rep)
function string.rep(s, n) end

---Returns a string that is the string `s` reversed.
---@param s string
---@return string
---[View documents](http://www.lua.org/manual/5.1/manual.html#pdf-string.reverse)
function string.reverse(s) end

---Returns the substring of the string that starts at `i` and continues until `j`.
---@param s string
---@param i integer
---@param j? integer
---@return string
---[View documents](http://www.lua.org/manual/5.1/manual.html#pdf-string.sub)
function string.sub(s, i, j) end

---Returns a copy of this string with all lowercase letters changed to uppercase.
---@param s string
---@return string
---[View documents](http://www.lua.org/manual/5.1/manual.html#pdf-string.upper)
function string.upper(s) end

return string
