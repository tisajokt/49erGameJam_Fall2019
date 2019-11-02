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

if(hits == 0){
	instance_destroy();
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
	hat.image_index = 0;
	hands.image_index = 0;
	image_index = 0;
	
	switch(weapon){
		case 0:
			alarm[1] = 44;
			break;
		case 1:
			alarm[1] = 52;
			break;
		case 2:
			alarm[1] = 24;
			break;
	}
	scr_Attack();
}

#endregion

// Physics calculations
event_inherited();

#region Visuals

if(instance_exists(obj_Hands) && (instance_exists(obj_Hat))){
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
	if(velocity_y < 0){
		sprite_index = spr_PlayerJumpRising;
		hands.move_state = move_state.jump_rising;
		hat.move_state = move_state.jump_rising;
	} else if(velocity_y > 0){
		sprite_index = spr_PlayerJumpFalling;
		hands.move_state = move_state.jump_falling;
		hat.move_state = move_state.jump_falling;
	}
}
hands.weapon = weapon;
hat.weapon = weapon;
}
// Change the color of the wizard

#endregion