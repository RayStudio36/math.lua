---
--- math.lua by RayStudio9236
--- See https://github.com/RayStudio36/math.lua for usage documentation.
--- Licensed under MIT.
--- See https://opensource.org/licenses/MIT for details.
---

_ENV = require('test.lunity')('vector2 test')

local Vector2 = require('vector2')

function test:before()
end

function test:after()
end

function test:create_vector()
    local v = Vector2(1, 2)
    assertNotNil(v)
    assertEqual(v.x, 1)
    assertEqual(v.y, 2)
end

function test:create_zero()
    local v = Vector2.zero()
    assertNotNil(v)
    assertEqual(v.x, 0)
    assertEqual(v.y, 0)
end

function test:create_up()
    local v = Vector2.up()
    assertNotNil(v)
    assertEqual(v.x, 0)
    assertEqual(v.y, 1)
end

function test:create_right()
    local v = Vector2.right()
    assertNotNil(v)
    assertEqual(v.x, 1)
    assertEqual(v.y, 0)
end

function test:create_down()
    local v = Vector2.down()
    assertNotNil(v)
    assertEqual(v.x, 0)
    assertEqual(v.y, -1)
end

function test:create_left()
    local v = Vector2.left()
    assertNotNil(v)
    assertEqual(v.x, -1)
    assertEqual(v.y, 0)
end

function test:to_string()
    local v = Vector2(2, 3)
    assertEqual(tostring(v), "Vector2(2, 3)")

    local v2 = Vector2(2.1, 3.2)
    assertEqual(tostring(v2), "Vector2(2.100000, 3.200000)")
end

function test:eq()
    local v = Vector2(0, 0)
    assertTrue(v == Vector2.zero())
    assertFalse(v == Vector2(1, 2))
end

function test:add()
    local v = Vector2(1, 2)
    local v2 = Vector2(2, 3)
    local r = v + v2
    assertNotNil(r)
    assertEqual(r.x, 3)
    assertEqual(r.y, 5)
end

function test:sub()
    local v = Vector2(1, 2)
    local v2 = Vector2(2, 3)
    local r = v - v2
    assertNotNil(r)
    assertEqual(r.x, -1)
    assertEqual(r.y, -1)
end

function test:mul()
    local v = Vector2(1, 2)
    local r = v * 2
    assertNotNil(r)
    assertEqual(r.x, 2)
    assertEqual(r.y, 4)
end

function test:div()
    local v = Vector2(1, 2)
    local r = v / 2
    assertNotNil(r)
    assertEqual(r.x, 0.5)
    assertEqual(r.y, 1)
end

function test:len()
    local v = Vector2(3, 4)
    local len = v:len()
    assertEqual(len, 5)
end

function test:sqLen()
    local v = Vector2(3, 4)
    local len = v:sqLen()
    assertEqual(len, 25)
end

function test:normalize()
    local v = Vector2(3, 4)
    local r = v:normalize()
    assertNotNil(r)
    assertEqual(r.x, 0.6)
    assertEqual(r.y, 0.8)
end

function test:normalized()
    local v = Vector2(3, 4)
    v:normalized()
    assertNotNil(v)
    assertEqual(v.x, 0.6)
    assertEqual(v.y, 0.8)
end

function test:dot()
    local v = Vector2(3, 4)
    local v2 = Vector2(4, 5)
    local ret = v:dot(v2)
    assertNotNil(ret)
    assertEqual(ret, 32)
end

function test:clone()
    local v = Vector2(3, 4)
    local v2 = v:clone()
    assertNotNil(v2)
    assertEqual(v2.x, 3)
    assertEqual(v2.y, 4)
end

test()