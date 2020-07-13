package.path = "../?/init.lua;../src/?.lua;../src/?/init.lua;"..package.path

local Util = require("util")
local DOM = require("src")

local udim0 = DOM.UDim2.new(1, 2, 3, 4)
local udim1 = DOM.UDim2.new(4, 3, 2, 1)
local udim2 = DOM.UDim2.new(1, 2, 3, 4)

assert(udim0 == udim0, "udim0 was not equal to itself")
assert(udim0 ~= udim1, "udim0 was equal to udim1")
assert(udim0 == udim2, "udim0 was not equal to udim2")

assert(udim1 ~= udim0, "udim1 was equal to udim0")
assert(udim1 == udim1, "udim1 was not equal to itself")
assert(udim1 ~= udim2, "udim1 was equal to udim2")

assert(udim2 == udim0, "udim2 was not equal to udim0")
assert(udim2 ~= udim1, "udim2 was equal to udim1")
assert(udim2 == udim2, "udim2 was not equal to itself")

assert(udim0.X == udim0.X, "udim0's X was not equal to itself")
assert(udim0.X ~= udim1.X, "udim0's X was equal to udim1's")
assert(udim0.X == udim2.X, "udim0's X was not equal to udim2's")

assert(udim1.X ~= udim0.X, "udim1's X was equal to udim1's")
assert(udim1.X == udim1.X, "udim1's X was not equal to itself")
assert(udim1.X ~= udim2.X, "udim1's X was equal to udim2's")

assert(udim2.X == udim0.X, "udim2's X was not equal to udim0's")
assert(udim2.X ~= udim1.X, "udim2's X was equal to udim1's")
assert(udim2.X == udim2.X, "udim2's X was not equal to itself")


assert(udim0.Y == udim0.Y, "udim0's Y was not equal to itself")
assert(udim0.Y ~= udim1.Y, "udim0's Y was equal to udim1's")
assert(udim0.Y == udim2.Y, "udim0's Y was not equal to udim2's")

assert(udim1.Y ~= udim0.Y, "udim1's Y was equal to udim1's")
assert(udim1.Y == udim1.Y, "udim1's Y was not equal to itself")
assert(udim1.Y ~= udim2.Y, "udim1's Y was equal to udim2's")

assert(udim2.Y == udim0.Y, "udim2's Y was not equal to udim0's")
assert(udim2.Y ~= udim1.Y, "udim2's Y was equal to udim1's")
assert(udim2.Y == udim2.Y, "udim2's Y was not equal to itself")

assert(Util.typeof(udim0) == "UDim2", "udim0 was not a UDim2")
assert(Util.typeof(udim1) == "UDim2", "udim1 was not a UDim2")
assert(Util.typeof(udim2) == "UDim2", "udim2 was not a UDim2")

assert(tostring(udim0) == "{1, 2}, {3, 4}", "tostring(udim0) did not produce '{1, 2}, {3, 4}'")
assert(tostring(udim1) == "{4, 3}, {2, 1}", "tostring(udim1) did not produce '{4, 3}, {2, 1}'")
assert(tostring(udim2) == "{1, 2}, {3, 4}", "tostring(udim2) did not produce '{1, 2}, {3, 4}'")