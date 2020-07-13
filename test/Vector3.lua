package.path = "../?/init.lua;../src/?.lua;../src/?/init.lua;"..package.path

local Util = require("util")
local DOM = require("src")

local vec0 = DOM.Vector3.new(1, 2, 3)
local vec1 = DOM.Vector3.new(4, 5, 6)
local vec2 = DOM.Vector3.new(1, 2, 3)

assert(vec0 == vec0, "vec0 was not equal to itself")
assert(vec0 ~= vec1, "vec0 was equal to vec1")
assert(vec0 == vec2, "vec0 was not equal to vec2")

assert(vec1 ~= vec0, "vec1 was equal to vec0")
assert(vec1 == vec1, "vec1 was not equal to itself")
assert(vec1 ~= vec2, "vec1 was equal to vec2")

assert(vec2 == vec0, "vec2 was not equal to vec0")
assert(vec2 ~= vec1, "vec2 was equal to vec1")
assert(vec2 == vec2, "vec2 was not equal to itself")

assert(vec0.X == 1, "vec0.X was not 1")
assert(vec0.Y == 2, "vec0.Y was not 2")
assert(vec0.Z == 3, "vec0.Z was not 3")

assert(vec1.X == 4, "vec1.X was not 4")
assert(vec1.Y == 5, "vec1.Y was not 5")
assert(vec1.Z == 6, "vec1.Z was not 6")

assert(vec2.X == 1, "vec2.X was not 1")
assert(vec2.Y == 2, "vec2.Y was not 2")
assert(vec2.Z == 3, "vec2.Z was not 3")

assert(Util.typeof(vec0) == "Vector3", "vec0 was not a Vector3")
assert(Util.typeof(vec1) == "Vector3", "vec1 was not a Vector3")
assert(Util.typeof(vec2) == "Vector3", "vec2 was not a Vector3")

assert(tostring(vec0) == "<1, 2, 3>", "tostring(vec0) did not produce '<1, 2, 3>'")
assert(tostring(vec1) == "<4, 5, 6>", "tostring(vec1) did not produce '<4, 5, 6>'")
assert(tostring(vec2) == "<1, 2, 3>", "tostring(vec2) did not produce '<1, 2, 3>'")