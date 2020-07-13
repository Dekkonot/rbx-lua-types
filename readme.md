# rbx-lua-types

This project is meant to provide a consistent representation of Roblox's data types for things like a DOM... in pure Lua. It is **not** meant to implement the entirety of Roblox's API. That task is monumental and well outside scope.

This project contains an 'Instance' type that can be used as a representation for Roblox classes. No validation is done on members pushed or popped onto these classes, including the ClassName.

This project also contains constructors and representations for various Roblox data types. These are not meant to emulate Roblox's implementations of the data types and are, again, only for the purposes of representation.

The following Roblox data types are included in this project:

- Instance
- Vector3
- Vector2
- CFrame
- Color3
- BrickColor
