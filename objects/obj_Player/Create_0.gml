
// Inherit the parent event
event_inherited();

hitpoints = max_hitpoints;
attackTimer = 20;
can_attack = true;
attack_offset = 15;


static_gravity_scale = gravity_scale; // do not modify


numAirJumps = 1;
maxAirJumps = 1;

attack_damage = 5;

playerInvinciblity = false;

// weapons
crossbow = false;
sword = false;
mace = false;


hands = instance_create_depth(x, y, depth-1, obj_Hands);
hat = instance_create_depth(x, y, depth-2, obj_Hat);

