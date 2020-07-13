local mt = {}
mt.__type = "Vector2"

function mt:__tostring()
    return string.format("<%g, %g>", self.X, self.Y)
end

function mt:__eq(other)
    return self.X == other.X and self.Y == other.Y
end

local members = {}
mt.__index = members

--- Creates a new `Vector2` out of the arguments.
local function new(x, y)
    assert(type(x) == "number", "arg #1 to Vector2.new must be a number")
    assert(type(y) == "number", "arg #2 to Vector2.new must be a number")

    local self = {}

    self.X = x
    self.Y = y

    setmetatable(self, mt)

    return self
end

return {
    new = new,
}