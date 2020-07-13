local Util = require("util")

local typeof = Util.typeof

local mt = {}
mt.__type = "Ray"

function mt:__tostring()
    return string.format("{%s}, {%s}", tostring(self.Origin), tostring(self.Direction) )
end

function mt:__eq(other)
    return self.Origin == other.Origin and self.Direction == other.Direction
end

local members = {}
mt.__index = members

--- Creates a new `Ray` out of the arguments.
local function new(origin, direction)
    assert(typeof(origin) == "Vector3", "arg #1 to Ray.new should be a Vector3")
    assert(typeof(direction) == "Vector3", "arg #2 to Ray.new should be a Vector3")

    local self = {}

    self.Origin = origin
    self.Direction = direction

    setmetatable(self, mt)

    return self
end

return {
    new = new,
}