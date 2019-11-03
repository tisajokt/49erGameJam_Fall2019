// handles damage done to player
// handles earth passive

// sets playerInvincibility
if(!obj_Player.playerInvinciblity){
	
	obj_Player.hits += -1;
	obj_Player.playerInvinciblity = true;
	obj_Player.alarm[2] = room_speed * 1;
	obj_Player.white_flash = true;
	obj_Player.alarm[3] = 10;
	obj_Player.armor = false;
	if(obj_Player.hat.hat_num != 0){
		switch(obj_Player.hat.hat_num){
			case 0:
				break;
			case 1:
				obj_Player.spd -= obj_Player.default_spd * 1.50;
				break;
			case 2:
				obj_Player.attack_damage -= obj_Player.default_attack * 1.25;
				break;
		}
		obj_Player.hat.hat_num = 0;
	}
	
	//obj_Player.weapon = 0;
	
}