---
--- math.lua by RayStudio9236
--- See https://github.com/RayStudio36/math.lua for usage documentation.
--- Licensed under MIT.
--- See https://opensource.org/licenses/MIT for details.
---

---@class Vector2
local Vector2 = {}

Vector2.__index = Vector2

setmetatable(
        Vector2,
        {
            __call = function(class, ...)
                local instance = {}
                setmetatable(instance, Vector2)
                instance:new(...)
                return instance
            end
        }
)

---@return Vector2
function Vector2.zero()
    return Vector2(0, 0)
end

---@return Vector2
function Vector2.one()
    return Vector2(1, 1)
end

---@return Vector2
function Vector2.up()
    return Vector2(0, 1)
end

---@return Vector2
function Vector2.right()
    return Vector2(1, 0)
end

---@return Vector2
function Vector2.down()
    return Vector2(0, -1)
end

---@return Vector2
function Vector2.left()
    return Vector2(-1, 0)
end

---@param angle number
---@return Vector2
function Vector2.fromAngle(angle)
    local a = math.rad(angle + 90);
    return Vector2(math.cos(a), math.sin(a))
end

function Vector2:new(x, y)
    self.x = x or 0
    self.y = y or 0
end

function Vector2:__tostring()
    local x = math.floor(self.x) == self.x
            and string.format("%d", self.x)
            or string.format("%f", self.x)
    local y = math.floor(self.y) == self.y
            and string.format("%d", self.y)
            or string.format("%f", self.y)

    return string.format("Vector2(%s, %s)",
            x,
            y)
end

function Vector2:__eq(other)
    return self.x == other.x and self.y == other.y
end

function Vector2:__add(other)
    return Vector2(self.x + other.x, self.y + other.y)
end

function Vector2:__sub(other)
    return Vector2(self.x - other.x, self.y - other.y)
end

function Vector2:__mul(value)
    return Vector2(self.x * value, self.y * value)
end

function Vector2:__div(value)
    return Vector2(self.x / value, self.y / value)
end

---@return number
function Vector2:len()
    return math.sqrt((self.x ^ 2) + (self.y ^ 2))
end

---@return number
function Vector2:sqLen()
    return (self.x ^ 2) + (self.y ^ 2)
end

---@return Vector2
function Vector2:normalize()
    local ret = Vector2(self.x, self.y)
    ret:normalized()
    return ret
end

function Vector2:normalized()
    local length = self:len()
    if length > 0 then
        self.x = self.x / length
        self.y = self.y / length
    end
end

---@param other Vector2
---@return number
function Vector2:dot(other)
    return (self.x * other.x) + (self.y * other.y)
end

---@return Vector2
function Vector2:clone()
    return Vector2(self.x, self.y)
end

---@return number
function Vector2:toAngle()
    return math.deg(math.atan(self.y, self.x)) - 90
end

return Vector2