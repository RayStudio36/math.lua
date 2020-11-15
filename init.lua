---
--- math.lua by RayStudio9236
--- See https://github.com/RayStudio36/math.lua for usage documentation.
--- Licensed under MIT.
--- See https://opensource.org/licenses/MIT for details.
---

--- Helper Lua file for easy require if math.lua is used as a git submodule or
--- folder. Not needed in many cases, including luarocks distribution.

local args = {...}
local directory = args[1]

local math = {
    MathEx = require(directory .. ".mathex"),
    Vector2 = require(directory .. ".vector2")
}

return math
