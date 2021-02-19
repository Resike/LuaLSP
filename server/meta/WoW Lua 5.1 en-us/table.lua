---@meta

---
---
---[View documents](http://www.lua.org/manual/5.1/manual.html#pdf-table)
---
---@class table*
table = {}

---
---Given a list where all elements are strings or numbers, returns the string `list[i]..sep..list[i+1] ··· sep..list[j]`.
---
---[View documents](http://www.lua.org/manual/5.1/manual.html#pdf-table.concat)
---
---@param list table
---@param sep? string
---@param i?   integer
---@param j?   integer
---@return string
function table.concat(list, sep, i, j) end

---
---Inserts element `value` at position `pos` in `list`.
---
---[View documents](http://www.lua.org/manual/5.1/manual.html#pdf-table.insert)
---
---@overload fun(list: table, value: any)
---@param list table
---@param pos integer
---@param value any
function table.insert(list, pos, value) end

---@version <5.1
---
---Returns the largest positive numerical index of the given table, or zero if the table has no positive numerical indices.
---
---[View documents](http://www.lua.org/manual/5.1/manual.html#pdf-table.maxn)
---
---@param table table
---@return integer
function table.maxn(table) end

---
---Removes from `list` the element at position `pos`, returning the value of the removed element.
---
---[View documents](http://www.lua.org/manual/5.1/manual.html#pdf-table.remove)
---
---@param list table
---@param pos? integer
---@return any
function table.remove(list, pos) end

---
---Sorts list elements in a given order, *in-place*, from `list[1]` to `list[#list]`.
---
---[View documents](http://www.lua.org/manual/5.1/manual.html#pdf-table.sort)
---
---@param list table
---@param comp fun(a: any, b: any):boolean
function table.sort(list, comp) end

return table
