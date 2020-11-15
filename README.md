# Math.lua

v0.1

A math utility module for lua

## Installation

The math.lua directory should be dropped into an existing project and required by it.

```lua
math = require 'math'
``` 

## Component

### Vector2

#### Example

```lua
Vector2 = math.Vector2
local v = Vector2(1, 2)
local v2 = Vector2(3, 4)
local r = v + v2 --- assert(r.x == 4 and r.y == 6)
```

