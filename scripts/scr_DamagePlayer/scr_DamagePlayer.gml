// handles damage done to player
// handles earth passive

// sets playerInvincibility
if(!obj_Player.playerInvinciblity){
	obj_Player.hits += -1;
	if (obj_Player.haslArmor == true) {
		obj_Player.haslArmor = false;
	} else if (obj_Player.hasmArmor == true) {
		obj_Player.takenHit += 1;
	}
	if (obj_Player.takenHit >= 2) {
		obj_Player.hasmArmor = false;
		takenHit = 0;
	}
	obj_Player.playerInvinciblity = true;
	obj_Player.alarm[2] = room_speed * 1;
	obj_Player.white_flash = true;
	obj_Player.alarm[3] = 10;
	if (obj_Player.hasWeapon == true) {
    obj_Player.weapon = 0;
}	
 
}