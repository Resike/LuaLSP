---@meta

---@class table*
---[View documents](http://www.lua.org/manual/5.1/manual.html#pdf-table)
table = {}

---Given a list where all elements are strings or numbers, returns the string `list[i]..sep..list[i+1] ··· sep..list[j]`.
---@param list table
---@param sep? string
---@param i? integer
---@param j? integer
---@return string
---[View documents](http://www.lua.org/manual/5.1/manual.html#pdf-table.concat)
function table.concat(list, sep, i, j) end

---Inserts element `value` at position `pos` in `list`.
---@overload fun(list: table, value: any)
---@param list table
---@param pos integer
---@param value any
---[View documents](http://www.lua.org/manual/5.1/manual.html#pdf-table.insert)
function table.insert(list, pos, value) end

---@version <5.1
---Returns the largest positive numerical index of the given table, or zero if the table has no positive numerical indices.
---@param table table
---@return integer
---[View documents](http://www.lua.org/manual/5.1/manual.html#pdf-table.maxn)
function table.maxn(table) end

---Removes from `list` the element at position `pos`, returning the value of the removed element.
---@param list table
---@param pos? integer
---@return any
---[View documents](http://www.lua.org/manual/5.1/manual.html#pdf-table.remove)
function table.remove(list, pos) end

---Sorts list elements in a given order, *in-place*, from `list[1]` to `list[#list]`.
---@param list table
---@param comp fun(a: any, b: any):boolean
---[View documents](http://www.lua.org/manual/5.1/manual.html#pdf-table.sort)
function table.sort(list, comp) end

return table
