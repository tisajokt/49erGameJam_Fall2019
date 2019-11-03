// handles damage done to player
// handles earth passive

// sets playerInvincibility
if(!obj_Player.playerInvinciblity){
	
	obj_Player.hits += -1;
	obj_Player.playerInvinciblity = true;
	obj_Player.alarm[2] = room_speed * 1;
	obj_Player.white_flash = true;
	obj_Player.alarm[3] = 10;
	
	//obj_Player.weapon = 0;
	
}