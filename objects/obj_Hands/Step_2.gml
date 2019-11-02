if(instance_exists(obj_Player)){
	x = obj_Player.x;
	y = obj_Player.y;

image_xscale = obj_Player.facing;

if(obj_Player.weapon == 1){
	sprite_index = spr_Crossbow1;
}
else if(obj_Player.weapon == 2){
	sprite_index = spr_Sword;
}
else if(obj_Player.weapon == 3){
	sprite_index = spr_Mace1;
}
else{
	sprite_index = spr_PitchforkIdle;
}


if(obj_Player.hits == 0){
	instance_destroy();
}


}