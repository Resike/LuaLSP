---@meta

---@version 5.1
---
---
---[View documents](http://www.lua.org/manual/5.1/manual.html#pdf-bit)
---
---@class bit*
bit = {}

---
---Returns the number `x` shifted `disp` bits to the right. Negative displacements shift to the left.
---
---This shift operation is what is called arithmetic shift. Vacant bits on the left are filled with copies of the higher bit of `x`; vacant bits on the right are filled with zeros.
---
---[View documents](http://www.lua.org/manual/5.1/manual.html#pdf-bit.arshift)
---
---@param x    integer
---@param disp integer
---@return integer
function bit.arshift(x, disp) end

---
---Returns the bitwise *and* of its operands.
---
---[View documents](http://www.lua.org/manual/5.1/manual.html#pdf-bit.band)
---
---@return integer
function bit.band(...) end

---
---Returns the bitwise negation of `x`.
---
---```lua
---assert(bit.bnot(x) == (-1 - x) % 2^32)
---```
---
---[View documents](http://www.lua.org/manual/5.1/manual.html#pdf-bit.bnot)
---
---@param x integer
---@return integer
function bit.bnot(x) end

---
---Returns the bitwise *or* of its operands.
---
---[View documents](http://www.lua.org/manual/5.1/manual.html#pdf-bit.bor)
---
---@return integer
function bit.bor(...) end

---
---Returns the bitwise *exclusive or* of its operands.
---
---[View documents](http://www.lua.org/manual/5.1/manual.html#pdf-bit.bxor)
---
---@return integer
function bit.bxor(...) end

---
---Returns the number `x` shifted `disp` bits to the left. Negative displacements shift to the right. In any direction, vacant bits are filled with zeros.
---
---```lua
---assert(bit.lshift(b, disp) == (b * 2^disp) % 2^32)
---```
---
---[View documents](http://www.lua.org/manual/5.1/manual.html#pdf-bit.lshift)
---
---@param x     integer
---@param distp integer
---@return integer
function bit.lshift(x, distp) end

---
---Returns the number `x` rotated `disp` bits to the right. Negative displacements rotate to the left.
---
---[View documents](http://www.lua.org/manual/5.1/manual.html#pdf-bit.rrotate)
---
---@param a     integer
---@param b integer
---@return integer
function bit.mod(a, b) end

---
---Returns the number `x` shifted `disp` bits to the right. Negative displacements shift to the left. In any direction, vacant bits are filled with zeros.
---
---```lua
---assert(bit.rshift(b, disp) == math.floor(b % 2^32 / 2^disp))
---```
---
---[View documents](http://www.lua.org/manual/5.1/manual.html#pdf-bit.rshift)
---
---@param x     integer
---@param distp integer
---@return integer
function bit.rshift(x, distp) end

return bit
