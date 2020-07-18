package.path = "../?/init.lua;../src/?.lua;../src/?/init.lua;"..package.path

local Util = require("util")
local DOM = require("src")

local inst0 = DOM.Instance.new("foo")
local inst1 = DOM.Instance.new("bar")

assert(not pcall(function() return inst0.INDEX_THAT_ISNT_REAL end), "invalid property index didn't throw")

assert(inst0.Ref == 0, "inst0 ref was not 0")
assert(inst1.Ref == 1, "inst1 ref was not 1")

assert(inst0.ClassName == "foo", "inst0 ClassName was not foo")
assert(inst1.ClassName == "bar", "inst0 ClassName was not bar")

assert(inst0.Parent.Ref == -1, "inst0 parent ref was not -1")
assert(inst1.Parent.Ref == -1, "inst1 parent ref was not -1")

assert(inst0.Parent == inst1.Parent, "inst0 and inst1 base parent were not equal")

assert(inst0 ~= inst1, "inst0 and inst1 were equal")

assert(pcall(inst0.addChild, inst0, inst1), "addChild failed for (inst0, inst1)")

assert(inst1.Parent == inst0, "inst1 parent was not inst0 after addChild(inst0, inst1)")

assert(not pcall(function() inst0.Properties.foo = true end), "inst0 property table was not readonly")
assert(not pcall(function() inst1.Properties.foo = true end), "inst0 property table was not readonly")

assert(pcall(inst0.addProperty, inst0, "foo", false), "addProperty failed for (inst0, 'foo', false)")
assert(pcall(inst1.addProperty, inst1, "foo", false), "addProperty failed for (inst1, 'foo', false)")

assert(inst0.Properties.foo == false, "addProperty did not work right for inst0")
assert(inst1.Properties.foo == false, "addProperty did not work right for inst1")

assert(pcall(function() inst0.Properties.foo = true end), "property table for inst0 did not allow set property to be written")
assert(pcall(function() inst1.Properties.foo = true end), "property table for inst1 did not allow set property to be written")

assert(inst0.Properties.foo == true, "writing property of inst0 did not set it")
assert(inst1.Properties.foo == true, "writing property of inst1 did not set it")

local inst52 = DOM.Instance.new("baz", 52)

assert(inst52.Ref == 52, "second argument of Instance constructor failed to set Ref")

assert(tostring(inst52) == "<Instance 52>", "tostring(inst52) failed to produce '<Instance 52>'")

assert(pcall(inst52.addProperty, inst52, "Name", "qux"), "addProperty failed for (inst52, 'Name', 'qux')")

assert(tostring(inst52) == "qux", "tostring(inst52) failed to produce 'qux' after setting 'Name' property")

assert(Util.typeof(inst0) == "Instance", "typeof failed for inst0")
assert(Util.typeof(inst1) == "Instance", "typeof failed for inst1")
assert(Util.typeof(inst52) == "Instance", "typeof failed for inst52")

assert(pcall(inst0.addChild, inst0, inst52), "addChild failed for (inst0, inst52)")
assert(inst52.Parent == inst0, "inst52 parent was not inst0 after addChild(inst0, inst52)")

assert(inst0.Children[1] == inst1, "inst0 children table was not set properly after addChild(inst0, inst1)")
assert(inst0.Children[52] == inst52, "inst0 children table was not set properly after addChild(inst0, inst52)")

local found1, found52 = false, false

for _, v in ipairs(inst0:getChildren()) do
    if v.Ref == 1 then
        found1 = true
    elseif v.Ref == 52 then
        found52 = true
    end
end

assert(found1 and found52, "inst0 getChildren table failed to generate properly")