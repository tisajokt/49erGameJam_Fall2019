// Inherit the parent event
event_inherited();

if(stun){
	active = false;
}



if(bleed && !invincible){
	invincible = true;
	white_flash = true;
	alarm[0] = invinciblity_timer;
	alarm[10] = 10;
	hitpoints -= 5;
}


if(hitpoints <= 0){
	instance_create_layer(x, y, layer, obj_RobotDeathExplosion);
	instance_destroy();
}