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



if(playerHealth == 0){
	instance_destroy();
}

if(hasWeapon && wH == 0) {
	playerHealth = playerHealth + 1;
	wH++
}


if (armor == 1 && aH1 == 0) {
	playerHealth += 1;
	aH1++;
}
if (armor == 2 && aH2 == 0) {
	playerHealth += 2;
	aH2++;
}

if (armor == 3) {
    shieldTimer++;
	if(shieldTimer >= 940) {
		armor = 0;
	}
} else {
	shieldTimer = 0;
}

if (armor == 4) {
    basketTimer++;
	show_debug_message(string(shieldTimer));
	if(basketTimer >= 1200) {
		armor = 0;
	}
} else {
	baskeTimer = 0;
}

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