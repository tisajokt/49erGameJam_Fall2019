
event_inherited();

if(instance_exists(obj_Player)){
	if(active){
		if(state == 1){
			
			
			
			// controls facing variable
			if(x > obj_Player.x){
				facing = -1;
				image_xscale = -1;
			}
			else{
				facing = 1;
				image_xscale = 1;
			}
		
			// Am I close enough to stop moving and attack?
			if (distance_to_object(obj_Player) < 75) {
				gotThere = true;
				velocity_x = 0;
			// Is there an invisible wall?
			} else if(place_meeting(x + velocity_x, y, obj_WallAI)){
				while(!place_meeting(x + sign(velocity_x), y, obj_WallAI)){
					x += sign(velocity_x);
				}
				velocity_x = 0;
			}
			// Should I move left or right?
			else{
				velocity_x = facing * spd;
				gotThere = false;
			}
			
			// Attack
			// Attacks player
			if(gotThere && rocketAttack){
				instance_create_layer(x, y, layer, obj_Rockets);
				rocketAttack = false;
				alarm[1] = room_speed * 2;
			}
			
			if(hitpoints < threshold){
				state = 3;
			}

		}
		else if(state == 2){
			
			velocity_x = 0;
			
			if(meteorAttack){
				instance_create_layer(random_range( obj_Player.x - 300, obj_Player.x + 300), y - 350, layer, obj_Satellite);
				meteorAttack = false;
				alarm[6] = room_speed * 0.3;
			}
			
			if(hitpoints < threshold){
				state = 3;
			}
			

		}
		else if(state == 3){
			
			velocity_x = 0;
			
			if(meteorAttack){
				instance_create_layer(random_range( obj_Player.x - 300, obj_Player.x ), y - 350, layer, obj_Satellite);
				meteorAttack = false;
				alarm[6] = room_speed * 0.3;
			}
			
			
			if(GITAttack){
				instance_create_layer(x, y - 40, layer, obj_GITAttack);
				GITAttack = false;
				alarm[7] = room_speed * 5;
			}
			
			
			
			

		}
		
		
	}
}

if(hitpoints <= 0){
	instance_create_layer(x, y, layer, obj_RobotDeathExplosion);
	obj_GameController.bossIsDead = true;
	instance_destroy();
}