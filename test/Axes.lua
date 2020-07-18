package.path = "../?/init.lua;../src/?.lua;../src/?/init.lua;"..package.path

local Util = require("util")
local DOM = require("src")

local axe0 = DOM.Axes.new(true, false, true)
local axe1 = DOM.Axes.new(true, true, false)
local axe2 = DOM.Axes.new(false, true, true)
local axe3 = DOM.Axes.new(true, false, true)

assert(not pcall(function() return axe0.INDEX_THAT_ISNT_REAL end), "invalid property index didn't throw")

assert(axe0 == axe0, "axe0 was not equal to itself")
assert(axe0 ~= axe1, "axe0 was equal to axe1")
assert(axe0 ~= axe2, "axe0 was equal to axe2")
assert(axe0 == axe3, "axe0 was not equal to axe3")

assert(axe1 ~= axe0, "axe1 was equal to axe0")
assert(axe1 == axe1, "axe1 was not equal to itself")
assert(axe1 ~= axe2, "axe1 was equal to axe2")
assert(axe1 ~= axe3, "axe1 was equal to axe3")

assert(axe2 ~= axe0, "axe2 was equal to axe0")
assert(axe2 ~= axe1, "axe2 was equal to axe1")
assert(axe2 == axe2, "axe2 was not equal to itself")
assert(axe2 ~= axe3, "axe2 was equal to axe3")

assert(axe3 == axe0, "axe3 was not equal to axe0")
assert(axe3 ~= axe1, "axe3 was equal to axe1")
assert(axe3 ~= axe2, "axe3 was equal to axe2")
assert(axe3 == axe3, "axe3 was not equal to itself")

assert(axe0.X == true, "axe0.X was not true")
assert(axe0.Y == false, "axe0.Y was not false")
assert(axe0.Z == true, "axe0.Z was not true")

assert(axe1.X == true, "axe1.X was not true")
assert(axe1.Y == true, "axe1.Y was not true")
assert(axe1.Z == false, "axe1.Z was not false")

assert(axe2.X == false, "axe2.X was not false")
assert(axe2.Y == true, "axe2.Y was not true")
assert(axe2.Z == true, "axe2.Z was not true")

assert(axe3.X == true, "axe3.X was not true")
assert(axe3.Y == false, "axe3.Y was not false")
assert(axe3.Z == true, "axe3.Z was not true")

assert(Util.typeof(axe0) == "Axes", "axe0 was not a Axes")
assert(Util.typeof(axe1) == "Axes", "axe1 was not a Axes")
assert(Util.typeof(axe2) == "Axes", "axe2 was not a Axes")
assert(Util.typeof(axe3) == "Axes", "axe3 was not a Axes")

assert(tostring(axe0) == "[true, false, true]", "tostring(axe0) did not produce '[true, false, true]'")
assert(tostring(axe1) == "[true, true, false]", "tostring(axe1) did not produce '[true, true, false]'")
assert(tostring(axe2) == "[false, true, true]", "tostring(axe2) did not produce '[false, true, true]'")
assert(tostring(axe3) == "[true, false, true]", "tostring(axe3) did not produce '[true, false, true]'")