if(object_exists(obj_Player)){
	x = obj_Player.x;
	y = obj_Player.y;
} else {
	instance_destroy();
}


image_scale = obj_Player.facing;

if (obj_Player.hasWeapon) {
	sprite_index = spr_weaponequipped;
}
else if (obj_Player.armor == 3) {
	sprite_index = spr_Player_shield;
}

else if (obj_Player.armor == 4) {
	sprite_index = spr_basket_shield;
}
else if (obj_Player.armor == 0) {
	sprite_index = spr_PlayerIdle;
}
//else if (obj_Player.armor == 4){
	//prite_index = spr_basket_shield;
else {
	//sprite_index = spr_PlayerIdle;
}