# rbx-lua-types

This library is meant to provide a consistent representation of Roblox's data types for things like a DOM... in pure Lua. It is **not** meant to implement the entirety of Roblox's API. That task is monumental and well outside scope.

Each datatype has one or more constructor that returns an instance of the type in question. The constructors used attempt to mimic one or more of Roblox's constructors, though given that Enums have no representation (yet) in this library, this isn't entirely possible.

## Contents

The [main module](src) returns a table with the following fields in it:

- typeof
- Instance
- Vector3
- Vector2
- CFrame
- Color3
- BrickColor
- Ray
- Region3
- Rect
- UDim
- UDim2
- NumberRange
- NumberSequenceKeypoint
- NumberSequence
- ColorSequenceKeypoint
- ColorSequence
- Faces
- Axes
- Vector3int16
- PhysicalProperties

With the exception of `typeof`, these fields represent modules for constructing Roblox datatypes. If a datatype is not present in the list above, it is not implemented yet.

The field `typeof` is a function that acts identically to the Roblox function of the same name and provides a more specific variant of `type` that takes the datatypes in this module into account.

### Documentation

Documentation for this library is not present yet, but the code is not very complex. You should be able to understand it from reading the actual modules or the [tests](test).
