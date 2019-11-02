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
	switch(weapon){
		case 0:
			can_attack = false;
			alarm[1] = 44;
			image_index = 0;
			hat.image_index = 0;
			hands.image_index = 0;
			break;
		case 1:
			can_attack = false;
			alarm[1] = 52;
			image_index = 0;
			hat.image_index = 0;
			hands.image_index = 0;
			break;
		case 2:
			can_attack = false;
			alarm[1] = 24;
			image_index = 0;
			hat.image_index = 0;
			hands.image_index = 0;
			break;
	}
	
	
	//scr_Attack();
}

#endregion

// Physics calculations
event_inherited();

#region Visuals
image_xscale = facing;
hat.image_xscale = facing;
hands.image_xscale = facing;

if(!can_attack) { //attacking
	switch(weapon){
		case 0:
			sprite_index = spr_PlayerPitchforkAttack;
			hat.move_state = move_state.attack;
			hands.move_state = move_state.attack;
			break;
		case 1:
			sprite_index = spr_PlayerCrossbowAttack;
			hat.move_state = move_state.attack;
			hands.move_state = move_state.attack;
			break;
		case 2:
			sprite_index = spr_PlayerSwordAttack;
			hat.move_state = move_state.attack;
			hands.move_state = move_state.attack;
			break;
	}
} else if(velocity_x = 0 && grounded) { // idle
	sprite_index = spr_PlayerIdle;
	hands.move_state = move_state.idle;
	hat.move_state = move_state.idle;
} else if(velocity_x != 0 && grounded) { //running
	sprite_index = spr_PlayerRun;
	hands.move_state = move_state.running;
	hat.move_state = move_state.running;
} else if(!grounded) { //jumping
	sprite_index = spr_PlayerIdle;
	hands.move_state = move_state.idle;
	hat.move_state = move_state.idle;
}
hands.weapon = weapon;
hat.weapon = weapon;

// Change the color of the wizard

#endregion