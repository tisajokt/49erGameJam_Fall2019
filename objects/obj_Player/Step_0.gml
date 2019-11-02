/// @description Player Controls

// Get Inputs
scr_GetInputs(0);

#region Movement
// Set velocity_x
if(can_move){
	velocity_x = (input_right - input_left) * spd;
} else {
	velocity_x = 0;
}

// Set facing
if(velocity_x != 0){
	facing = sign(velocity_x);
}

// Jump
if(grounded && input_jump && can_move){
	velocity_y = -9.2;
}

// When the player is on the ground
if(grounded){
	numAirJumps = maxAirJumps;
}

if(velocity_y > 0){
	gravity_scale = static_gravity_scale * 1.4;
} else {
	gravity_scale = static_gravity_scale;
}
#endregion



#region Attacking
if(input_attack && can_attack){
	can_attack = false;
	alarm[1] = attackTimer;
	
	//scr_Attack();
}

#endregion

// Physics calculations
event_inherited();

#region Visuals



// Change the color of the wizard

#endregion