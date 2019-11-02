if(object_exists(obj_Player)){
	x = obj_Player.x;
	y = obj_Player.y;
}

image_scale = obj_Player.facing;

if (obj_Player.alarm[0] == 0) {
    sprite_index = spr_PlayerIdle 
}
if (obj_Player.armor == 3){
	sprite_index = spr_Player_shield;
}
else if (obj_Player.armor == 4){
	sprite_index = spr_basket_shield;
} else {
	//sprite_index = spr_PlayerIdle;
}