local Util = require("util")

local typeof = Util.typeof

local mt = {}
mt.__type = "Region3"

function mt:__tostring()
    return string.format("%s; %s", tostring(self.Min), tostring(self.Max) )
end

function mt:__eq(other)
    return self.Min == other.Min and self.Max == other.Max
end

local members = {}
mt.__index = members

--- Creates a new `Region3` out of the arguments.
local function new(min, max)
    assert(typeof(min) == "Vector3", "arg #1 to Region3.new should be a Vector3")
    assert(typeof(max) == "Vector3", "arg #2 to Region3.new should be a Vector3")

    local self = {}

    self.Min = min
    self.Max = max

    setmetatable(self, mt)

    return self
end

return {
    new = new,
}