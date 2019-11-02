// handles damage done to player
// handles earth passive

enemyDamage = argument0;

// sets playerInvincibility
if(!obj_Player.playerInvinciblity){
	
	obj_Player.hitpoints -= enemyDamage;
	obj_Player.playerInvinciblity = true;
	obj_Player.alarm[2] = room_speed * 1;
	
}