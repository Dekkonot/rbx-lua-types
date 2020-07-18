package.path = "../?/init.lua;../src/?.lua;../src/?/init.lua;"..package.path

local Util = require("util")
local DOM = require("src")

local reg0 = DOM.Region3.new(DOM.Vector3.new(1, 2, 3), DOM.Vector3.new(4, 5, 6))
local reg1 = DOM.Region3.new(DOM.Vector3.new(7, 8, 9), DOM.Vector3.new(10, 11, 12))
local reg2 = DOM.Region3.new(DOM.Vector3.new(1, 2, 3), DOM.Vector3.new(4, 5, 6))

assert(not pcall(function() return reg0.INDEX_THAT_ISNT_REAL end), "invalid property index didn't throw")

assert(reg0 == reg0, "reg0 was not equal to itself")
assert(reg0 ~= reg1, "reg0 was equal to reg1")
assert(reg0 == reg2, "reg0 was not equal to reg2")

assert(reg1 ~= reg0, "reg1 was equal to reg0")
assert(reg1 == reg1, "reg1 was not equal to itself")
assert(reg1 ~= reg2, "reg1 was equal to reg2")

assert(reg2 == reg0, "reg2 was not equal to reg0")
assert(reg2 ~= reg1, "reg2 was equal to reg1")
assert(reg2 == reg2, "reg2 was not equal to itself")

assert(reg0.Min == reg0.Min, "reg0's Min was not equal to itself")
assert(reg0.Min ~= reg1.Min, "reg0's Min was equal to reg1's")
assert(reg0.Min == reg2.Min, "reg0's Min was not equal to reg2's")

assert(reg1.Min ~= reg0.Min, "reg1's Min was equal to reg1's")
assert(reg1.Min == reg1.Min, "reg1's Min was not equal to itself")
assert(reg1.Min ~= reg2.Min, "reg1's Min was equal to reg2's")

assert(reg2.Min == reg0.Min, "reg2's Min was not equal to reg0's")
assert(reg2.Min ~= reg1.Min, "reg2's Min was equal to reg1's")
assert(reg2.Min == reg2.Min, "reg2's Min was not equal to itself")


assert(reg0.Max == reg0.Max, "reg0's Max was not equal to itself")
assert(reg0.Max ~= reg1.Max, "reg0's Max was equal to reg1's")
assert(reg0.Max == reg2.Max, "reg0's Max was not equal to reg2's")

assert(reg1.Max ~= reg0.Max, "reg1's Max was equal to reg1's")
assert(reg1.Max == reg1.Max, "reg1's Max was not equal to itself")
assert(reg1.Max ~= reg2.Max, "reg1's Max was equal to reg2's")

assert(reg2.Max == reg0.Max, "reg2's Max was not equal to reg0's")
assert(reg2.Max ~= reg1.Max, "reg2's Max was equal to reg1's")
assert(reg2.Max == reg2.Max, "reg2's Max was not equal to itself")

assert(Util.typeof(reg0) == "Region3", "reg0 was not a Region3")
assert(Util.typeof(reg1) == "Region3", "reg1 was not a Region3")
assert(Util.typeof(reg2) == "Region3", "reg2 was not a Region3")

assert(tostring(reg0) == "<1, 2, 3>; <4, 5, 6>", "tostring(reg0) did not produce '<1, 2, 3>; <4, 5, 6>'")
assert(tostring(reg1) == "<7, 8, 9>; <10, 11, 12>", "tostring(reg1) did not produce '<7, 8, 9>; <10, 11, 12>'")
assert(tostring(reg2) == "<1, 2, 3>; <4, 5, 6>", "tostring(reg2) did not produce '<1, 2, 3>; <4, 5, 6>'")