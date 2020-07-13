package.path = "../?/init.lua;../src/?.lua;../src/?/init.lua;"..package.path

local Util = require("util")
local DOM = require("src")

local ray0 = DOM.Ray.new(DOM.Vector3.new(1, 2, 3), DOM.Vector3.new(4, 5, 6))
local ray1 = DOM.Ray.new(DOM.Vector3.new(7, 8, 9), DOM.Vector3.new(10, 11, 12))
local ray2 = DOM.Ray.new(DOM.Vector3.new(1, 2, 3), DOM.Vector3.new(4, 5, 6))

assert(ray0 == ray0, "ray0 was not equal to itself")
assert(ray0 ~= ray1, "ray0 was equal to ray1")
assert(ray0 == ray2, "ray0 was not equal to ray2")

assert(ray1 ~= ray0, "ray1 was equal to ray0")
assert(ray1 == ray1, "ray1 was not equal to itself")
assert(ray1 ~= ray2, "ray1 was equal to ray2")

assert(ray2 == ray0, "ray2 was not equal to ray0")
assert(ray2 ~= ray1, "ray2 was equal to ray1")
assert(ray2 == ray2, "ray2 was not equal to itself")

assert(ray0.Origin == ray0.Origin, "ray0's Origin was not equal to itself")
assert(ray0.Origin ~= ray1.Origin, "ray0's Origin was equal to ray1's")
assert(ray0.Origin == ray2.Origin, "ray0's Origin was not equal to ray2's")

assert(ray1.Origin ~= ray0.Origin, "ray1's Origin was equal to ray1's")
assert(ray1.Origin == ray1.Origin, "ray1's Origin was not equal to itself")
assert(ray1.Origin ~= ray2.Origin, "ray1's Origin was equal to ray2's")

assert(ray2.Origin == ray0.Origin, "ray2's Origin was not equal to ray0's")
assert(ray2.Origin ~= ray1.Origin, "ray2's Origin was equal to ray1's")
assert(ray2.Origin == ray2.Origin, "ray2's Origin was not equal to itself")


assert(ray0.Direction == ray0.Direction, "ray0's Direction was not equal to itself")
assert(ray0.Direction ~= ray1.Direction, "ray0's Direction was equal to ray1's")
assert(ray0.Direction == ray2.Direction, "ray0's Direction was not equal to ray2's")

assert(ray1.Direction ~= ray0.Direction, "ray1's Direction was equal to ray1's")
assert(ray1.Direction == ray1.Direction, "ray1's Direction was not equal to itself")
assert(ray1.Direction ~= ray2.Direction, "ray1's Direction was equal to ray2's")

assert(ray2.Direction == ray0.Direction, "ray2's Direction was not equal to ray0's")
assert(ray2.Direction ~= ray1.Direction, "ray2's Direction was equal to ray1's")
assert(ray2.Direction == ray2.Direction, "ray2's Direction was not equal to itself")

assert(Util.typeof(ray0) == "Ray", "ray0 was not a Ray")
assert(Util.typeof(ray1) == "Ray", "ray1 was not a Ray")
assert(Util.typeof(ray2) == "Ray", "Ray was not a Ray")

assert(tostring(ray0) == "{1, 2, 3}, {4, 5, 6}", "tostring(ray0) did not produce '{1, 2, 3}, {4, 5, 6}'")
assert(tostring(ray1) == "{7, 8, 9}, {10, 11, 12}", "tostring(ray1) did not produce '{7, 8, 9}, {10, 11, 12}'")
assert(tostring(ray2) == "{1, 2, 3}, {4, 5, 6}", "tostring(ray2) did not produce '{1, 2, 3}, {4, 5, 6}'")