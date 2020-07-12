package.path = "../?/init.lua;../src/?.lua;../src/?/init.lua;"..package.path

local Util = require("util")
local DOM = require("src")

local col0 = DOM.Color3.new(1, 2, 3)
local col1 = DOM.Color3.new(4, 5, 6)
local col2 = DOM.Color3.fromRGB(255*1, 255*2, 255*3)

assert(col0 == col0, "col0 was not equal to itself")
assert(col0 ~= col1, "col0 was equal to col1")
assert(col0 == col2, "col0 was not equal to col2")

assert(col1 ~= col0, "col1 was equal to col0")
assert(col1 == col1, "col1 was not equal to itself")
assert(col1 ~= col2, "col1 was equal to col2")

assert(col2 == col0, "col2 was not equal to col0")
assert(col2 ~= col1, "col2 was equal to col1")
assert(col2 == col2, "col2 was not equal to itself")

assert(col0.R == 1, "col0.R was not 1")
assert(col0.G == 2, "col0.G was not 2")
assert(col0.B == 3, "col0.B was not 3")

assert(col1.R == 4, "col1.R was not 4")
assert(col1.G == 5, "col1.G was not 5")
assert(col1.B == 6, "col1.B was not 6")

assert(col2.R == 1, "col2.R was not 1")
assert(col2.G == 2, "col2.G was not 2")
assert(col2.B == 3, "col2.B was not 3")

assert(Util.typeof(col0) == "Color3", "col0 was not a Color3")
assert(Util.typeof(col1) == "Color3", "col1 was not a Color3")
assert(Util.typeof(col2) == "Color3", "col2 was not a Color3")

assert(tostring(col0) == "1, 2, 3", "tostring(col0) did not produce '1, 2, 3'")
assert(tostring(col1) == "4, 5, 6", "tostring(col1) did not produce '4, 5, 6'")
assert(tostring(col2) == "1, 2, 3", "tostring(col2) did not produce '1, 2, 3'")