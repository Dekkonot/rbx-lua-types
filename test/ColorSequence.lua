package.path = "../?/init.lua;../src/?.lua;../src/?/init.lua;"..package.path

local Util = require("util")
local DOM = require("src")

local nsq0 = DOM.ColorSequence.new({DOM.ColorSequenceKeypoint.new(1, DOM.Color3.new(2, 3, 4)), DOM.ColorSequenceKeypoint.new(5, DOM.Color3.new(6, 7, 8))})
local nsq1 = DOM.ColorSequence.new({DOM.ColorSequenceKeypoint.new(9, DOM.Color3.new(10, 11, 12)), DOM.ColorSequenceKeypoint.new(13, DOM.Color3.new(14, 15, 16))})
local nsq2 = DOM.ColorSequence.new({DOM.ColorSequenceKeypoint.new(1, DOM.Color3.new(2, 3, 4)), DOM.ColorSequenceKeypoint.new(5, DOM.Color3.new(6, 7, 8))})

assert(nsq0 == nsq0, "nsq0 was not equal to itself")
assert(nsq0 ~= nsq1, "nsq0 was equal to nsq1")
assert(nsq0 == nsq2, "nsq0 was not equal to nsq2")

assert(nsq1 ~= nsq0, "nsq1 was equal to nsq0")
assert(nsq1 == nsq1, "nsq1 was not equal to itself")
assert(nsq1 ~= nsq2, "nsq1 was equal to nsq2")

assert(nsq2 == nsq0, "nsq2 was not equal to nsq0")
assert(nsq2 ~= nsq1, "nsq2 was equal to nsq1")
assert(nsq2 == nsq2, "nsq2 was not equal to itself")

assert(nsq0.Keypoints[1] == nsq0.Keypoints[1], "nsq0's first Keypoint was not equal to itself")
assert(nsq0.Keypoints[1] ~= nsq1.Keypoints[1], "nsq0's first Keypoint was equal to nsq1's")
assert(nsq0.Keypoints[1] == nsq2.Keypoints[1], "nsq0's first Keypoint was not equal to nsq2's")

assert(nsq1.Keypoints[1] ~= nsq0.Keypoints[1], "nsq1's first Keypoint was equal to nsq1's")
assert(nsq1.Keypoints[1] == nsq1.Keypoints[1], "nsq1's first Keypoint was not equal to itself")
assert(nsq1.Keypoints[1] ~= nsq2.Keypoints[1], "nsq1's first Keypoint was equal to nsq2's")

assert(nsq2.Keypoints[1] == nsq0.Keypoints[1], "nsq2's first Keypoint was not equal to nsq0's")
assert(nsq2.Keypoints[1] ~= nsq1.Keypoints[1], "nsq2's first Keypoint was equal to nsq1's")
assert(nsq2.Keypoints[1] == nsq2.Keypoints[1], "nsq2's first Keypoint was not equal to itself")


assert(nsq0.Keypoints[2] == nsq0.Keypoints[2], "nsq0's second Keypoint was not equal to itself")
assert(nsq0.Keypoints[2] ~= nsq1.Keypoints[2], "nsq0's second Keypoint was equal to nsq1's")
assert(nsq0.Keypoints[2] == nsq2.Keypoints[2], "nsq0's second Keypoint was not equal to nsq2's")

assert(nsq1.Keypoints[2] ~= nsq0.Keypoints[2], "nsq1's second Keypoint was equal to nsq1's")
assert(nsq1.Keypoints[2] == nsq1.Keypoints[2], "nsq1's second Keypoint was not equal to itself")
assert(nsq1.Keypoints[2] ~= nsq2.Keypoints[2], "nsq1's second Keypoint was equal to nsq2's")

assert(nsq2.Keypoints[2] == nsq0.Keypoints[2], "nsq2's second Keypoint was not equal to nsq0's")
assert(nsq2.Keypoints[2] ~= nsq1.Keypoints[2], "nsq2's second Keypoint was equal to nsq1's")
assert(nsq2.Keypoints[2] == nsq2.Keypoints[2], "nsq2's second Keypoint was not equal to itself")

assert(Util.typeof(nsq0) == "ColorSequence", "nsq0 was not a ColorSequence")
assert(Util.typeof(nsq1) == "ColorSequence", "nsq1 was not a ColorSequence")
assert(Util.typeof(nsq2) == "ColorSequence", "nsq2 was not a ColorSequence")

assert(tostring(nsq0) == "{1 = (2, 3, 4), 5 = (6, 7, 8)}", "tostring(nsq0) did not produce '{1 = (2, 3, 4), 5 = (6, 7, 8)}'")
assert(tostring(nsq1) == "{9 = (10, 11, 12), 13 = (14, 15, 16)}", "tostring(nsq1) did not produce '{9 = (10, 11, 12), 13 = (14, 15, 16)}'")
assert(tostring(nsq2) == "{1 = (2, 3, 4), 5 = (6, 7, 8)}", "tostring(nsq2) did not produce '{1 = (2, 3, 4), 5 = (6, 7, 8)}'")