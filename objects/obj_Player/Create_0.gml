
// Inherit the parent event
event_inherited();

hitpoints = max_hitpoints;
attackTimer = 20;
can_attack = true;
attack_offset = 15;


static_gravity_scale = gravity_scale; // do not modify

enum move_state{
	idle,
	running,
	jump_rising,
	jump_falling,
	take_damage,
	attack
}

numAirJumps = 1;
maxAirJumps = 1;

attack_damage = 5;
default_attack = attack_damage;

playerInvinciblity = false;
default_spd = spd;

enum hat_names{
	default_hat,
	speed_hat,
	other_hat
}

// weapons
weapon = 0;



hits = 1;

hands = instance_create_depth(x, y, depth-1, obj_Hands);
hat = instance_create_depth(x, y, depth-2, obj_Hat);

