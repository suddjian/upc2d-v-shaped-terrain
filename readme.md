This is a demo of a fix for the UltimateCharacterController2D script.

https://suddjian.github.io/upc2d-v-shaped-terrain/

V-shaped terrain with angles steeper than 45 degrees will trap the controller in a way that doesn't feel right as a player.
It's not on the floor because it's on a steep slope, but at the bottom of the V, it is standing on two opposing slopes,
so while walking is not allowed, it would be appropriate to be able to jump.

The test scene demonstrates the differences between the two.

The unpatched controller is included here as a script at root of the project,
and the patched controller is included as a submodule under addons.
