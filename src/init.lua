local Util = require("util")

return {
    typeof = Util.typeof,
    Instance = require("Instance"),
    Vector3 = require("datatypes.Vector3"),
    Vector2 = require("datatypes.Vector2"),
    CFrame = require("datatypes.CFrame"),
    Color3 = require("datatypes.Color3"),
    BrickColor = require("datatypes.BrickColor"),
    Ray = require("datatypes.Ray"),
    Region3 = require("datatypes.Region3"),
    Rect = require("datatypes.Rect"),
    UDim = require("datatypes.UDim"),
    UDim2 = require("datatypes.UDim2"),
    NumberRange = require("datatypes.NumberRange"),
    NumberSequenceKeypoint = require("datatypes.NumberSequenceKeypoint"),
    NumberSequence = require("datatypes.NumberSequence"),
    ColorSequenceKeypoint = require("datatypes.ColorSequenceKeypoint"),
    ColorSequence = require("datatypes.ColorSequence"),
}