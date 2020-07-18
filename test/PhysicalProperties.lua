package.path = "../?/init.lua;../src/?.lua;../src/?/init.lua;"..package.path

local Util = require("util")
local DOM = require("src")

local pps0 = DOM.PhysicalProperties.new(1, 2, 3, 4, 5)
local pps1 = DOM.PhysicalProperties.new(6, 7, 8, 9, 10)
local pps2 = DOM.PhysicalProperties.new(1, 2, 3, 4, 5)

assert(pps0 == pps0, "pps0 was not equal to itself")
assert(pps0 ~= pps1, "pps0 was equal to pps1")
assert(pps0 == pps2, "pps0 was not equal to pps2")

assert(pps1 ~= pps0, "pps1 was equal to pps0")
assert(pps1 == pps1, "pps1 was not equal to itself")
assert(pps1 ~= pps2, "pps1 was equal to pps2")

assert(pps2 == pps0, "pps2 was not equal to pps0")
assert(pps2 ~= pps1, "pps2 was equal to pps1")
assert(pps2 == pps2, "pps2 was not equal to itself")

assert(pps0.Density == 1, "pps0.Density was not 1")
assert(pps0.Friction == 2, "pps0.Friction was not 2")
assert(pps0.Elasticity == 3, "pps0.Elasticity was not 3")
assert(pps0.FrictionWeight == 4, "pps0.Elasticity was not 3")
assert(pps0.ElasticityWeight == 5, "pps0.Elasticity was not 3")

assert(pps1.Density == 6, "pps1.Density was not 4")
assert(pps1.Friction == 7, "pps1.Friction was not 5")
assert(pps1.Elasticity == 8, "pps1.Elasticity was not 6")
assert(pps1.FrictionWeight == 9, "pps1.Elasticity was not 6")
assert(pps1.ElasticityWeight == 10, "pps1.Elasticity was not 6")

assert(pps2.Density == 1, "pps2.Density was not 1")
assert(pps2.Friction == 2, "pps2.Friction was not 2")
assert(pps2.Elasticity == 3, "pps2.Elasticity was not 3")
assert(pps2.FrictionWeight == 4, "pps2.Elasticity was not 3")
assert(pps2.ElasticityWeight == 5, "pps2.Elasticity was not 3")

assert(Util.typeof(pps0) == "PhysicalProperties", "pps0 was not a PhysicalProperties")
assert(Util.typeof(pps1) == "PhysicalProperties", "pps1 was not a PhysicalProperties")
assert(Util.typeof(pps2) == "PhysicalProperties", "pps2 was not a PhysicalProperties")

assert(tostring(pps0) == "(1, 2, 3, 4, 5)", "tostring(pps0) did not produce '(1, 2, 3, 4, 5)'")
assert(tostring(pps1) == "(6, 7, 8, 9, 10)", "tostring(pps1) did not produce '(6, 7, 8, 9, 10)'")
assert(tostring(pps2) == "(1, 2, 3, 4, 5)", "tostring(pps2) did not produce '(1, 2, 3, 4, 5)'")