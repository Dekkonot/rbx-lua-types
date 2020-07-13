package.path = "../?/init.lua;../src/?.lua;../src/?/init.lua;"..package.path

local Util = require("util")
local DOM = require("src")

local udim0 = DOM.UDim.new(1, 2)
local udim1 = DOM.UDim.new(3, 4)
local udim2 = DOM.UDim.new(1, 2)

assert(not pcall(DOM.UDim.new, 1, 0.5), "UDim.new's second argument was allowed to be a fraction")

assert(udim0 == udim0, "udim0 was not equal to itself")
assert(udim0 ~= udim1, "udim0 was equal to udim1")
assert(udim0 == udim2, "udim0 was not equal to udim2")

assert(udim1 ~= udim0, "udim1 was equal to udim0")
assert(udim1 == udim1, "udim1 was not equal to itself")
assert(udim1 ~= udim2, "udim1 was equal to udim2")

assert(udim2 == udim0, "udim2 was not equal to udim0")
assert(udim2 ~= udim1, "udim2 was equal to udim1")
assert(udim2 == udim2, "udim2 was not equal to itself")

assert(udim0.Scale == 1, "udim0.Scale was not 1")
assert(udim0.Offset == 2, "udim0.Offset was not 2")

assert(udim1.Scale == 3, "udim1.Scale was not 3")
assert(udim1.Offset == 4, "udim1.Offset was not 4")

assert(udim2.Scale == 1, "udim2.Scale was not 1")
assert(udim2.Offset == 2, "udim2.Offset was not 2")

assert(Util.typeof(udim0) == "UDim", "udim0 was not a UDim")
assert(Util.typeof(udim1) == "UDim", "udim1 was not a UDim")
assert(Util.typeof(udim2) == "UDim", "udim2 was not a UDim")

assert(tostring(udim0) == "{1, 2}", "tostring(udim0) did not produce '{1, 2}'")
assert(tostring(udim1) == "{3, 4}", "tostring(udim1) did not produce '{3, 4}'")
assert(tostring(udim2) == "{1, 2}", "tostring(udim2) did not produce '{1, 2}'")