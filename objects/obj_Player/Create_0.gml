
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

//armor 
armor = 0;
playerHealth = 1;
attack_damage = 5;
hasShield = false;
shieldTimer = 0;
basketTimer = 0;
hasWeapon = false;
wH = 0;
aH1 = 0;
aH2 = 0;
playerInvinciblity = false;

hands = instance_create_depth(x, y, depth-1, obj_Hands);
hat = instance_create_depth(x, y, depth-2, obj_Hat);
