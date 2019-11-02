
// Inherit the parent event
event_inherited();

hitpoints = max_hitpoints;
changeTimer = 15;
can_switch = true;
attackTimer = 20;
can_attack = true;
attack_offset = 4;


static_gravity_scale = gravity_scale; // do not modify

enum move_state{
	idle,
	running,
	jump_rising,
	jump_falling,
	take_damage,
	attack
}

canAirJump = false;
numAirJumps = 1;
maxAirJumps = 1;

attack_damage = 5;

playerInvinciblity = false;

hands = instance_create_depth(x, y, depth-2, obj_Hands);
hat = instance_create_depth(x, y, depth-1, obj_Hat);