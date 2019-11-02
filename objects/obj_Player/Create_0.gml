
// Inherit the parent event
event_inherited();

hitpoints = max_hitpoints;
changeTimer = 15;
can_switch = true;
attackTimer = 20;
can_attack = true;
attack_offset = 4;


static_gravity_scale = gravity_scale; // do not modify

canAirJump = false;
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

hands = instance_create_depth(x, y, depth-1, obj_Hands);
hat = instance_create_depth(x, y, depth-2, obj_Hat);
