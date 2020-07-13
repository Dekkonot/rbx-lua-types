package.path = "../?/init.lua;../src/?.lua;../src/?/init.lua;"..package.path

local Util = require("util")
local DOM = require("src")

local rect0 = DOM.Rect.new(DOM.Vector2.new(1, 2), DOM.Vector2.new(3, 4))
local rect1 = DOM.Rect.new(DOM.Vector2.new(4, 3), DOM.Vector2.new(2, 1))
local rect2 = DOM.Rect.new(DOM.Vector2.new(1, 2), DOM.Vector2.new(3, 4))

assert(rect0 == rect0, "rect0 was not equal to itself")
assert(rect0 ~= rect1, "rect0 was equal to rect1")
assert(rect0 == rect2, "rect0 was not equal to rect2")

assert(rect1 ~= rect0, "rect1 was equal to rect0")
assert(rect1 == rect1, "rect1 was not equal to itself")
assert(rect1 ~= rect2, "rect1 was equal to rect2")

assert(rect2 == rect0, "rect2 was not equal to rect0")
assert(rect2 ~= rect1, "rect2 was equal to rect1")
assert(rect2 == rect2, "rect2 was not equal to itself")

assert(rect0.Min == rect0.Min, "rect0's Min was not equal to itself")
assert(rect0.Min ~= rect1.Min, "rect0's Min was equal to rect1's")
assert(rect0.Min == rect2.Min, "rect0's Min was not equal to rect2's")

assert(rect1.Min ~= rect0.Min, "rect1's Min was equal to rect1's")
assert(rect1.Min == rect1.Min, "rect1's Min was not equal to itself")
assert(rect1.Min ~= rect2.Min, "rect1's Min was equal to rect2's")

assert(rect2.Min == rect0.Min, "rect2's Min was not equal to rect0's")
assert(rect2.Min ~= rect1.Min, "rect2's Min was equal to rect1's")
assert(rect2.Min == rect2.Min, "rect2's Min was not equal to itself")


assert(rect0.Max == rect0.Max, "rect0's Max was not equal to itself")
assert(rect0.Max ~= rect1.Max, "rect0's Max was equal to rect1's")
assert(rect0.Max == rect2.Max, "rect0's Max was not equal to rect2's")

assert(rect1.Max ~= rect0.Max, "rect1's Max was equal to rect1's")
assert(rect1.Max == rect1.Max, "rect1's Max was not equal to itself")
assert(rect1.Max ~= rect2.Max, "rect1's Max was equal to rect2's")

assert(rect2.Max == rect0.Max, "rect2's Max was not equal to rect0's")
assert(rect2.Max ~= rect1.Max, "rect2's Max was equal to rect1's")
assert(rect2.Max == rect2.Max, "rect2's Max was not equal to itself")

assert(Util.typeof(rect0) == "Rect", "rect0 was not a Rect")
assert(Util.typeof(rect1) == "Rect", "rect1 was not a Rect")
assert(Util.typeof(rect2) == "Rect", "rect2 was not a Rect")

assert(tostring(rect0) == "<1, 2>, <3, 4>", "tostring(rect0) did not produce '<1, 2>, <3, 4>'")
assert(tostring(rect1) == "<4, 3>, <2, 1>", "tostring(rect1) did not produce '<4, 3>, <2, 1>'")
assert(tostring(rect2) == "<1, 2>, <3, 4>", "tostring(rect2) did not produce '<1, 2>, <3, 4>'")