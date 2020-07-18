package.path = "../?/init.lua;../src/?.lua;../src/?/init.lua;"..package.path

local Util = require("util")
local DOM = require("src")

local csk0 = DOM.ColorSequenceKeypoint.new(1, DOM.Color3.new(2, 3, 4))
local csk1 = DOM.ColorSequenceKeypoint.new(5, DOM.Color3.new(6, 7, 8))
local csk2 = DOM.ColorSequenceKeypoint.new(1, DOM.Color3.new(2, 3, 4))

assert(csk0 == csk0, "csk0 was not equal to itself")
assert(csk0 ~= csk1, "csk0 was equal to csk1")
assert(csk0 == csk2, "csk0 was not equal to csk2")

assert(csk1 ~= csk0, "csk1 was equal to csk0")
assert(csk1 == csk1, "csk1 was not equal to itself")
assert(csk1 ~= csk2, "csk1 was equal to csk2")

assert(csk2 == csk0, "csk2 was not equal to csk0")
assert(csk2 ~= csk1, "csk2 was equal to csk1")
assert(csk2 == csk2, "csk2 was not equal to itself")

assert(csk0.Time == 1, "csk0.Time was not 1")
assert(csk0.Value == DOM.Color3.new(2, 3, 4), "csk0.Value was not Color3.new(2, 3, 4)")

assert(csk1.Time == 5, "csk1.Time was not 5")
assert(csk1.Value == DOM.Color3.new(6, 7, 8), "csk1.Value was not Color3.new(6, 7, 8)")

assert(csk2.Time == 1, "csk2.Time was not 1")
assert(csk2.Value == DOM.Color3.new(2, 3, 4), "csk2.Value was not Color3.new(2, 3, 4)")

assert(Util.typeof(csk0) == "ColorSequenceKeypoint", "csk0 was not a ColorSequenceKeypoint")
assert(Util.typeof(csk1) == "ColorSequenceKeypoint", "csk1 was not a ColorSequenceKeypoint")
assert(Util.typeof(csk2) == "ColorSequenceKeypoint", "csk2 was not a ColorSequenceKeypoint")

assert(tostring(csk0) == "1 = (2, 3, 4)", "tostring(csk0) did not produce '1 = (2, 3, 4)'")
assert(tostring(csk1) == "5 = (6, 7, 8)", "tostring(csk1) did not produce '5 = (6, 7, 8)'")
assert(tostring(csk2) == "1 = (2, 3, 4)", "tostring(csk2) did not produce '1 = (2, 3, 4)'")