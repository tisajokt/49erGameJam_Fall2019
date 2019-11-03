

event_inherited();

active = true;

//movement
canJump = true;
spd = 0.7;
facing = 1;

alarm[5] = room_speed * 20;

rocketAttack = true;
meteorAttack = true;
GITAttack = true;

animate_attack = false;

hitpoints = 300;
threshold = 120;

state = 3;