if(!invincible){
	invincible = true;
	white_flash = true;
	alarm[0] = invinciblity_timer;
	alarm[10] = 10;
	hitpoints -= obj_Player.attack_damage;
	
	if(obj_Player.weapon == 2){
		bleed = true;
		alarm[11] = room_speed * 3;
	}
	else if(obj_Player.weapon == 3){
		velocity_y = -7;
	}
	//hspeed = 0;
	
	
}