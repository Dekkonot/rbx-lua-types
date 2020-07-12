local Vector3 = require("datatypes.Vector3")
local Util = require("util")

local typeof = Util.typeof

local mt = {}
mt.__type = "CFrame"

function mt:__tostring()
    return string.format("%s, %s, %s, %s",
        tostring(self.Position), tostring(self.RightVector),
        tostring(self.UpVector), tostring(self.LookVector)
    )
end

function mt:__eq(other)
    return self.Position == other.Position and self.RightVector == other.RightVector
        and self.UpVector == self.UpVector and self.LookVector == other.LookVector
end

local members = {}
mt.__index = members

--- Creates a new `CFrame` out of the arguments.
local function constructor(x, y, z, rX, rY, rZ, uX, uY, uZ, lX, lY, lZ)
    local self = {}

    self.Position = Vector3(x, y, z)
    self.RightVector = Vector3(rX, rY, rZ)
    self.UpVector = Vector3(uX, uY, uZ)
    self.LookVector = Vector3(lX, lY, lZ)

    setmetatable(self, mt)

    return self
end

return constructor