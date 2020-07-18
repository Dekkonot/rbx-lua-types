package.path = "../?/init.lua;../src/?.lua;../src/?/init.lua;"..package.path

local Util = require("util")
local DOM = require("src")

local cf0 = DOM.CFrame.new(1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12)
local cf1 = DOM.CFrame.new(12, 11, 10, 9, 8, 7, 6, 5, 4, 3, 2, 1)
local cf2 = DOM.CFrame.new(1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12)

assert(not pcall(function() return cf0.INDEX_THAT_ISNT_REAL end), "invalid property index didn't throw")

assert(cf0 == cf0, "cf0 was not equal to itself")
assert(cf0 ~= cf1, "cf0 was equal to cf1")
assert(cf0 == cf2, "cf0 was not equal to cf2")

assert(cf1 ~= cf0, "cf1 was equal to cf0")
assert(cf1 == cf1, "cf1 was not equal to itself")
assert(cf1 ~= cf2, "cf1 was equal to cf2")

assert(cf2 == cf0, "cf2 was not equal to cf0")
assert(cf2 ~= cf1, "cf2 was equal to cf1")
assert(cf2 == cf2, "cf2 was not equal to itself")

assert(cf0.Position == cf0.Position, "cf0's Position was not equal to itself")
assert(cf0.Position ~= cf1.Position, "cf0's Position was equal to cf1's")
assert(cf0.Position == cf2.Position, "cf0's Position was not equal to cf2's")

assert(cf1.Position ~= cf0.Position, "cf1's Position was equal to cf1's")
assert(cf1.Position == cf1.Position, "cf1's Position was not equal to itself")
assert(cf1.Position ~= cf2.Position, "cf1's Position was equal to cf2's")

assert(cf2.Position == cf0.Position, "cf2's Position was not equal to cf0's")
assert(cf2.Position ~= cf1.Position, "cf2's Position was equal to cf1's")
assert(cf2.Position == cf2.Position, "cf2's Position was not equal to itself")


assert(cf0.RightVector == cf0.RightVector, "cf0's RightVector was not equal to itself")
assert(cf0.RightVector ~= cf1.RightVector, "cf0's RightVector was equal to cf1's")
assert(cf0.RightVector == cf2.RightVector, "cf0's RightVector was not equal to cf2's")

assert(cf1.RightVector ~= cf0.RightVector, "cf1's RightVector was equal to cf1's")
assert(cf1.RightVector == cf1.RightVector, "cf1's RightVector was not equal to itself")
assert(cf1.RightVector ~= cf2.RightVector, "cf1's RightVector was equal to cf2's")

assert(cf2.RightVector == cf0.RightVector, "cf2's RightVector was not equal to cf0's")
assert(cf2.RightVector ~= cf1.RightVector, "cf2's RightVector was equal to cf1's")
assert(cf2.RightVector == cf2.RightVector, "cf2's RightVector was not equal to itself")


assert(cf0.UpVector == cf0.UpVector, "cf0's UpVector was not equal to itself")
assert(cf0.UpVector ~= cf1.UpVector, "cf0's UpVector was equal to cf1's")
assert(cf0.UpVector == cf2.UpVector, "cf0's UpVector was not equal to cf2's")

assert(cf1.UpVector ~= cf0.UpVector, "cf1's UpVector was equal to cf1's")
assert(cf1.UpVector == cf1.UpVector, "cf1's UpVector was not equal to itself")
assert(cf1.UpVector ~= cf2.UpVector, "cf1's UpVector was equal to cf2's")

assert(cf2.UpVector == cf0.UpVector, "cf2's UpVector was not equal to cf0's")
assert(cf2.UpVector ~= cf1.UpVector, "cf2's UpVector was equal to cf1's")
assert(cf2.UpVector == cf2.UpVector, "cf2's UpVector was not equal to itself")


assert(cf0.LookVector == cf0.LookVector, "cf0's LookVector was not equal to itself")
assert(cf0.LookVector ~= cf1.LookVector, "cf0's LookVector was equal to cf1's")
assert(cf0.LookVector == cf2.LookVector, "cf0's LookVector was not equal to cf2's")

assert(cf1.LookVector ~= cf0.LookVector, "cf1's LookVector was equal to cf1's")
assert(cf1.LookVector == cf1.LookVector, "cf1's LookVector was not equal to itself")
assert(cf1.LookVector ~= cf2.LookVector, "cf1's LookVector was equal to cf2's")

assert(cf2.LookVector == cf0.LookVector, "cf2's LookVector was not equal to cf0's")
assert(cf2.LookVector ~= cf1.LookVector, "cf2's LookVector was equal to cf1's")
assert(cf2.LookVector == cf2.LookVector, "cf2's LookVector was not equal to itself")

assert(Util.typeof(cf0) == "CFrame", "cf0 was not a CFrame")
assert(Util.typeof(cf1) == "CFrame", "cf1 was not a CFrame")
assert(Util.typeof(cf2) == "CFrame", "cf2 was not a CFrame")

assert(tostring(cf0) == "<1, 2, 3>, <4, 5, 6>, <7, 8, 9>, <10, 11, 12>", "tostring(cf0) did not produce '<1, 2, 3>, <4, 5, 6>, <7, 8, 9>, <10, 11, 12>'")
assert(tostring(cf1) == "<12, 11, 10>, <9, 8, 7>, <6, 5, 4>, <3, 2, 1>", "tostring(cf1) did not produce '<12, 11, 10>, <9, 8, 7>, <6, 5, 4>, <3, 2, 1>'")
assert(tostring(cf2) == "<1, 2, 3>, <4, 5, 6>, <7, 8, 9>, <10, 11, 12>", "tostring(cf2) did not produce '<1, 2, 3>, <4, 5, 6>, <7, 8, 9>, <10, 11, 12>'")