package.path = "../?/init.lua;../src/?.lua;../src/?/init.lua;"..package.path

local Util = require("util")
local DOM = require("src")

local nsk0 = DOM.NumberSequenceKeypoint.new(1, 2, 3)
local nsk1 = DOM.NumberSequenceKeypoint.new(4, 5, 6)
local nsk2 = DOM.NumberSequenceKeypoint.new(1, 2, 3)

assert(not pcall(function() return nsk0.INDEX_THAT_ISNT_REAL end), "invalid property index didn't throw")

assert(nsk0 == nsk0, "nsk0 was not equal to itself")
assert(nsk0 ~= nsk1, "nsk0 was equal to nsk1")
assert(nsk0 == nsk2, "nsk0 was not equal to nsk2")

assert(nsk1 ~= nsk0, "nsk1 was equal to nsk0")
assert(nsk1 == nsk1, "nsk1 was not equal to itself")
assert(nsk1 ~= nsk2, "nsk1 was equal to nsk2")

assert(nsk2 == nsk0, "nsk2 was not equal to nsk0")
assert(nsk2 ~= nsk1, "nsk2 was equal to nsk1")
assert(nsk2 == nsk2, "nsk2 was not equal to itself")

assert(nsk0.Time == 1, "nsk0.Time was not 1")
assert(nsk0.Value == 2, "nsk0.Value was not 2")
assert(nsk0.Envelope == 3, "nsk0.Envelope was not 3")

assert(nsk1.Time == 4, "nsk1.Time was not 4")
assert(nsk1.Value == 5, "nsk1.Value was not 5")
assert(nsk1.Envelope == 6, "nsk1.Envelope was not 6")

assert(nsk2.Time == 1, "nsk2.Time was not 1")
assert(nsk2.Value == 2, "nsk2.Value was not 2")
assert(nsk2.Envelope == 3, "nsk2.Envelope was not 3")

assert(Util.typeof(nsk0) == "NumberSequenceKeypoint", "nsk0 was not a NumberSequenceKeypoint")
assert(Util.typeof(nsk1) == "NumberSequenceKeypoint", "nsk1 was not a NumberSequenceKeypoint")
assert(Util.typeof(nsk2) == "NumberSequenceKeypoint", "nsk2 was not a NumberSequenceKeypoint")

assert(tostring(nsk0) == "1 = 2 +- 3", "tostring(nsk0) did not produce '1 = 2 +- 3'")
assert(tostring(nsk1) == "4 = 5 +- 6", "tostring(nsk1) did not produce '4 = 5 +- 6'")
assert(tostring(nsk2) == "1 = 2 +- 3", "tostring(nsk2) did not produce '1 = 2 +- 3'")