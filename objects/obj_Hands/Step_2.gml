if(object_exists(obj_Player)){
	x = obj_Player.x;
	y = obj_Player.y;
}
image_xscale = obj_Player.facing;

if(obj_Player.crossbow){
	sprite_index = spr_Crossbow;
}
else if(obj_Player.sword){
	sprite_index = spr_Crossbow;
}
else if(obj_Player.mace){
	sprite_index = spr_Crossbow;
}
else{
	sprite_index = spr_PitchforkIdle;
}