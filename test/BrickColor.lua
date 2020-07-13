package.path = "../?/init.lua;../src/?.lua;../src/?/init.lua;"..package.path

local Util = require("util")
local DOM = require("src")

local brk0 = DOM.BrickColor.new(194)
local brk1 = DOM.BrickColor.new(26)
local brk2 = DOM.BrickColor.new(1234567890)

assert(brk0 == brk0, "brk0 was not equal to itself")
assert(brk0 ~= brk1, "brk0 was equal to brk1")
assert(brk0 == brk2, "brk0 was not equal to brk2")

assert(brk1 ~= brk0, "brk1 was equal to brk0")
assert(brk1 == brk1, "brk1 was not equal to itself")
assert(brk1 ~= brk2, "brk1 was equal to brk2")

assert(brk2 == brk0, "brk2 was not equal to brk0")
assert(brk2 ~= brk1, "brk2 was equal to brk1")
assert(brk2 == brk2, "brk2 was not equal to itself")

assert(brk0.Name == "Medium stone grey", "brk0.Name was not 'Medium stone grey'")
assert(brk0.Number == 194, "brk0.Number was not 194")
assert(brk0.Color == DOM.Color3.fromRGB(163, 162, 165), "brk0.Color was not (163, 162, 165)")

assert(brk1.Name == "Black", "brk1.Name was not 'Black'")
assert(brk1.Number == 26, "brk1.Number was not 26")
assert(brk1.Color == DOM.Color3.fromRGB(27, 42, 53), "brk1.Color was not (27, 42, 53)")

assert(brk2.Name == "Medium stone grey", "brk2.Name was not 'Medium stone grey'")
assert(brk2.Number == 194, "brk2.Number was not 194")
assert(brk2.Color == DOM.Color3.fromRGB(163, 162, 165), "brk2.Color was not (163, 162, 165)")

assert(Util.typeof(brk0) == "BrickColor", "brk0 was not a BrickColor")
assert(Util.typeof(brk1) == "BrickColor", "brk1 was not a BrickColor")
assert(Util.typeof(brk2) == "BrickColor", "brk2 was not a BrickColor")

assert(tostring(brk0) == "Medium stone grey", "tostring(brk0) did not produce 'Medium stone grey'")
assert(tostring(brk1) == "Black", "tostring(brk1) did not produce 'Black'")
assert(tostring(brk2) == "Medium stone grey", "tostring(brk2) did not produce 'Medium stone grey'")