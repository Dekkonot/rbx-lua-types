package.path = "../?/init.lua;../src/?.lua;../src/?/init.lua;"..package.path

local Util = require("util")
local DOM = require("src")

local fac0 = DOM.Faces.new(true, false, true, false, true, false)
local fac1 = DOM.Faces.new(true, true, false, false, true, true)
local fac2 = DOM.Faces.new(false, true, true, false, false, true)
local fac3 = DOM.Faces.new(true, false, true, false, true, false)

assert(fac0 == fac0, "fac0 was not equal to itself")
assert(fac0 ~= fac1, "fac0 was equal to fac1")
assert(fac0 ~= fac2, "fac0 was equal to fac2")
assert(fac0 == fac3, "fac0 was not equal to fac3")

assert(fac1 ~= fac0, "fac1 was equal to fac0")
assert(fac1 == fac1, "fac1 was not equal to itself")
assert(fac1 ~= fac2, "fac1 was equal to fac2")
assert(fac1 ~= fac3, "fac1 was equal to fac3")

assert(fac2 ~= fac0, "fac2 was equal to fac0")
assert(fac2 ~= fac1, "fac2 was equal to fac1")
assert(fac2 == fac2, "fac2 was not equal to itself")
assert(fac2 ~= fac3, "fac2 was equal to fac3")

assert(fac3 == fac0, "fac3 was not equal to fac0")
assert(fac3 ~= fac1, "fac3 was equal to fac1")
assert(fac3 ~= fac2, "fac3 was equal to fac2")
assert(fac3 == fac3, "fac3 was not equal to itself")

assert(fac0.Top == true, "fac0.Top was not true")
assert(fac0.Bottom == false, "fac0.Bottom was not false")
assert(fac0.Left == true, "fac0.Left was not true")
assert(fac0.Right == false, "fac0.Right was not false")
assert(fac0.Back == true, "fac0.Back was not true")
assert(fac0.Front == false, "fac0.Front was not false")

assert(fac1.Top == true, "fac1.Top was not true")
assert(fac1.Bottom == true, "fac1.Bottom was not true")
assert(fac1.Left == false, "fac1.Left was not false")
assert(fac1.Right == false, "fac1.Right was not false")
assert(fac1.Back == true, "fac1.Back was not true")
assert(fac1.Front == true, "fac1.Front was not true")

assert(fac2.Top == false, "fac2.Top was not false")
assert(fac2.Bottom == true, "fac2.Bottom was not true")
assert(fac2.Left == true, "fac2.Left was not true")
assert(fac2.Right == false, "fac2.Right was not false")
assert(fac2.Back == false, "fac2.Back was not false")
assert(fac2.Front == true, "fac2.Front was not true")

assert(fac3.Top == true, "fac3.Top was not true")
assert(fac3.Bottom == false, "fac3.Bottom was not false")
assert(fac3.Left == true, "fac3.Left was not true")
assert(fac3.Right == false, "fac3.Right was not false")
assert(fac3.Back == true, "fac3.Back was not true")
assert(fac3.Front == false, "fac3.Front was not false")

assert(Util.typeof(fac0) == "Faces", "fac0 was not a Faces")
assert(Util.typeof(fac1) == "Faces", "fac1 was not a Faces")
assert(Util.typeof(fac2) == "Faces", "fac2 was not a Faces")
assert(Util.typeof(fac3) == "Faces", "fac3 was not a Faces")

assert(tostring(fac0) == "[true, false, true, false, true, false]", "tostring(fac0) did not produce '[true, false, true, false, true, false]'")
assert(tostring(fac1) == "[true, true, false, false, true, true]", "tostring(fac1) did not produce '[true, true, false, false, true, true]'")
assert(tostring(fac2) == "[false, true, true, false, false, true]", "tostring(fac2) did not produce '[false, true, true, false, false, true]'")
assert(tostring(fac3) == "[true, false, true, false, true, false]", "tostring(fac3) did not produce '[true, false, true, false, true, false]'")