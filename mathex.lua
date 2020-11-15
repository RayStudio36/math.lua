local MathEx = {}

---@param value number
---@param min number
---@param max number
---@return number
function MathEx.clamp(value, min, max)
    if value < min then
        return min
    end

    if value > max then
        return max
    end

    return value
end

---@param value number
---@return number
function MathEx.round(value)
    value = tonumber(value) or 0
    return math.floor(value + 0.5)
end

---@param angle number
---@return number
function MathEx.angle2radian(angle)
    return angle * math.pi / 180
end

---@param radian number
---@return number
function MathEx.radian2angle(radian)
    return radian / math.pi * 180
end

---@param value number
---@return number
function MathEx.sign(value)
    return value > 0 and 1 or (value < 0 and -1 or 0)
end

return MathEx
