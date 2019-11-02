if(object_exists(obj_Player)){
	x = obj_Player.x;
	y = obj_Player.y;
}
image_xscale = obj_Player.facing;

if(obj_Player.weapon == 1){
	sprite_index = spr_Crossbow;
}
else if(obj_Player.weapon == 2){
	sprite_index = spr_Sword;
}
else if(obj_Player.weapon == 3){
	sprite_index = spr_Mace;
}
else{
	sprite_index = spr_PitchforkIdle;
}