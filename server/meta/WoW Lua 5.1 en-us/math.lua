---@meta

---@class math*
---[View documents](http://www.lua.org/manual/5.1/manual.html#pdf-math)

---A value larger than any other numeric value.
---@field huge number
---[View documents](http://www.lua.org/manual/5.1/manual.html#pdf-math.huge)

---The value of *π*.
---@field pi number
---[View documents](http://www.lua.org/manual/5.1/manual.html#pdf-math.pi)
math = {}


---Returns the absolute value of `x`.
---@param x number
---@return number
---[View documents](http://www.lua.org/manual/5.1/manual.html#pdf-math.abs)
function math.abs(x) end

---Returns the arc cosine of `x` (in radians).
---@param x number
---@return number
---[View documents](http://www.lua.org/manual/5.1/manual.html#pdf-math.acos)
function math.acos(x) end

---Returns the arc sine of `x` (in radians).
---@param x number
---@return number
---[View documents](http://www.lua.org/manual/5.1/manual.html#pdf-math.asin)
function math.asin(x) end

---Returns the arc tangent of `x` (in radians).
---@param y number
---@return number
---[View documents](http://www.lua.org/manual/5.1/manual.html#pdf-math.atan)
function math.atan(y) end

---@version <5.2
---Returns the arc tangent of `y/x` (in radians).
---@param y number
---@param x number
---@return number
---[View documents](http://www.lua.org/manual/5.1/manual.html#pdf-math.atan2)
function math.atan2(y, x) end

---Returns the smallest integral value larger than or equal to `x`.
---@param x number
---@return integer
---[View documents](http://www.lua.org/manual/5.1/manual.html#pdf-math.ceil)
function math.ceil(x) end

---Returns the cosine of `x` (assumed to be in radians).
---@param x number
---[View documents](http://www.lua.org/manual/5.1/manual.html#pdf-math.cos)
function math.cos(x) end

---@version <5.2
---Returns the hyperbolic cosine of `x` (assumed to be in radians).
---@param x number
---@return number
---[View documents](http://www.lua.org/manual/5.1/manual.html#pdf-math.cosh)
function math.cosh(x) end

---Converts the angle `x` from radians to degrees.
---@param x number
---@return number
---[View documents](http://www.lua.org/manual/5.1/manual.html#pdf-math.deg)
function math.deg(x) end

---Returns the value `e^x` (where `e` is the base of natural logarithms).
---@param x number
---@return number
---[View documents](http://www.lua.org/manual/5.1/manual.html#pdf-math.exp)
function math.exp(x) end

---Returns the largest integral value smaller than or equal to `x`.
---@param x number
---@return number
---[View documents](http://www.lua.org/manual/5.1/manual.html#pdf-math.floor)
function math.floor(x) end

---Returns the remainder of the division of `x` by `y` that rounds the quotient towards zero.
---@param x number
---@param y number
---@return number
---[View documents](http://www.lua.org/manual/5.1/manual.html#pdf-math.fmod)
function math.fmod(x, y) end

---@version <5.2
---Decompose `x` into tails and exponents. Returns `m` and `e` such that `x = m * (2 ^ e)`, `e` is an integer and the absolute value of `m` is in the range [0.5, 1) (or zero when `x` is zero).
---@param x number
---@return number m
---@return number e
---[View documents](http://www.lua.org/manual/5.1/manual.html#pdf-math.frexp)
function math.frexp(x) end

---@version <5.2
---Returns `m * (2 ^ e)` .
---@param m number
---@param e number
---@return number
---[View documents](http://www.lua.org/manual/5.1/manual.html#pdf-math.ldexp)
function math.ldexp(m, e) end

---Returns the natural logarithm of `x` .
---@param x number
---@return number
---[View documents](http://www.lua.org/manual/5.1/manual.html#pdf-math.log)
function math.log(x) end

---@version <5.1
---Returns the base-10 logarithm of x.
---@param x number
---@return number
---[View documents](http://www.lua.org/manual/5.1/manual.html#pdf-math.log10)
function math.log10(x) end

---Returns the argument with the maximum value, according to the Lua operator `<`.
---@param x number
---@vararg number
---@return number
---[View documents](http://www.lua.org/manual/5.1/manual.html#pdf-math.max)
function math.max(x, ...) end

---Returns the argument with the minimum value, according to the Lua operator `<`.
---@param x number
---@vararg number
---@return number
---[View documents](http://www.lua.org/manual/5.1/manual.html#pdf-math.min)
function math.min(x, ...) end

---Returns the integral part of `x` and the fractional part of `x`.
---@param x number
---@return integer
---@return number
---[View documents](http://www.lua.org/manual/5.1/manual.html#pdf-math.modf)
function math.modf(x) end

---@version <5.2
---Returns `x ^ y` .
---@param x number
---@param y number
---@return number
---[View documents](http://www.lua.org/manual/5.1/manual.html#pdf-math.pow)
function math.pow(x, y) end

---Converts the angle `x` from degrees to radians.
---@param x number
---@return number
---[View documents](http://www.lua.org/manual/5.1/manual.html#pdf-math.rad)
function math.rad(x) end

---* `math.random()`: Returns a float in the range [0,1).
---* `math.random(n)`: Returns a integer in the range [1, n].
---* `math.random(m, n)`: Returns a integer in the range [m, n].
---@overload fun():number
---@overload fun(m: integer):integer
---@param m integer
---@param n integer
---@return integer
---[View documents](http://www.lua.org/manual/5.1/manual.html#pdf-math.random)
function math.random(m, n) end

---Sets `x` as the "seed" for the pseudo-random generator.
---@param x integer
---[View documents](http://www.lua.org/manual/5.1/manual.html#pdf-math.randomseed)
function math.randomseed(x) end

---Returns the sine of `x` (assumed to be in radians).
---@param x number
---@return number
---[View documents](http://www.lua.org/manual/5.1/manual.html#pdf-math.sin)
function math.sin(x) end

---@version <5.2
---Returns the hyperbolic sine of `x` (assumed to be in radians).
---@param x number
---@return number
---[View documents](http://www.lua.org/manual/5.1/manual.html#pdf-math.sinh)
function math.sinh(x) end

---Returns the square root of `x`.
---@param x number
---@return number
---[View documents](http://www.lua.org/manual/5.1/manual.html#pdf-math.sqrt)
function math.sqrt(x) end

---Returns the tangent of `x` (assumed to be in radians).
---@param x number
---@return number
---[View documents](http://www.lua.org/manual/5.1/manual.html#pdf-math.tan)
function math.tan(x) end

---@version <5.2
---Returns the hyperbolic tangent of `x` (assumed to be in radians).
---@param x number
---@return number
---[View documents](http://www.lua.org/manual/5.1/manual.html#pdf-math.tanh)
function math.tanh(x) end

---Returns `"integer"` if `x` is an integer, `"float"` if it is a float, or `nil` if `x` is not a number.
---@param x any
---@return
---| '"integer"'
---| '"float"'
---| 'nil'
---[View documents](http://www.lua.org/manual/5.1/manual.html#pdf-math.type)
function math.type(x) end

---Returns `true` if and only if `m` is below `n` when they are compared as unsigned integers.
---@param m integer
---@param n integer
---@return boolean
---[View documents](http://www.lua.org/manual/5.1/manual.html#pdf-math.ult)
function math.ult(m, n) end

return math
