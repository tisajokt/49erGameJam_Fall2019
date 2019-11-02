
damage = 50;
alarm[0] = room_speed * 0.5;

if(instance_exists(obj_Player) && instance_exists(obj_Drone)){
	
	image_angle = -point_direction(obj_Drone.x, obj_Drone.y, obj_Player.x, obj_Player.y);
}


