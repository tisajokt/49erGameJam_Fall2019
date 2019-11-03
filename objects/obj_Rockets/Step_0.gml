if(state == 1){
	y -= 2;
}
else{
	if(update){
		if(instance_exists(obj_Player)){
			targetx = obj_Player.x;
			targety = obj_Player.y;
			update = false;
			alarm[2] = room_speed * 2;
		}
	}
	
	move_towards_point(targetx, targety, 1);
	image_angle =  -90 + point_direction(x, y, targetx, targety);
	
	if((abs(x - targetx) <= 1) && (abs(y - targety) <= 1)){
		update = true;
	}
	
}