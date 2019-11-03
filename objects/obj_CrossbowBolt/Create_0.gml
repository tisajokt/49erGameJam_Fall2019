spd = 15;
playerFacing = 1;
//show_debug_message("WORKs");
if(instance_exists(obj_Player)){
	if(obj_Player.facing == 1){
		image_xscale = 1;
		playerFacing = 1;
	}
	else{
		image_xscale = -1;
		playerFacing = -1;
	}

	alarm[0] = room_speed * 2;
}

