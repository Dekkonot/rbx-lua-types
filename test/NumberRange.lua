package.path = "../?/init.lua;../src/?.lua;../src/?/init.lua;"..package.path

local Util = require("util")
local DOM = require("src")

local range0 = DOM.NumberRange.new(1, 2)
local range1 = DOM.NumberRange.new(3, 4)
local range2 = DOM.NumberRange.new(1, 2)

assert(range0 == range0, "range0 was not equal to itself")
assert(range0 ~= range1, "range0 was equal to range1")
assert(range0 == range2, "range0 was not equal to range2")

assert(range1 ~= range0, "range1 was equal to range0")
assert(range1 == range1, "range1 was not equal to itself")
assert(range1 ~= range2, "range1 was equal to range2")

assert(range2 == range0, "range2 was not equal to range0")
assert(range2 ~= range1, "range2 was equal to range1")
assert(range2 == range2, "range2 was not equal to itself")

assert(range0.Min == 1, "range0.Min was not 1")
assert(range0.Max == 2, "range0.Max was not 2")

assert(range1.Min == 3, "range1.Min was not 3")
assert(range1.Max == 4, "range1.Max was not 4")

assert(range2.Min == 1, "range2.Min was not 1")
assert(range2.Max == 2, "range2.Max was not 2")

assert(Util.typeof(range0) == "NumberRange", "range0 was not a NumberRange")
assert(Util.typeof(range1) == "NumberRange", "range1 was not a NumberRange")
assert(Util.typeof(range2) == "NumberRange", "range2 was not a NumberRange")

assert(tostring(range0) == "[1, 2]", "tostring(range0) did not produce '[1, 2]'")
assert(tostring(range1) == "[3, 4]", "tostring(range1) did not produce '[3, 4]'")
assert(tostring(range2) == "[1, 2]", "tostring(range2) did not produce '[1, 2]'")