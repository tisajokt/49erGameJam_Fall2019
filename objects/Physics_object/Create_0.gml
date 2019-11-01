//// @description Initial physics code

// define velocities

velocity_x = 0;

velocity_y = 0;

prev_velocity_y = velocity_y;

grounded = false; // set to true if the player is on the ground
wasGrounded = grounded;
landing = false;

is_knocked_back = false; // set to true when the object is taking knockback

facing = 1;

gravity_scale = 0.3;

mass = 1;

spd = 5;

jump_force = -9.2;

can_move = true;