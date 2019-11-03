
event_inherited();

if(instance_exists(obj_Player)){
	if(active){
		
		// controls facing variable
		if(x > obj_Player.x){
			facing = -1;
			image_xscale = 1;
		}
		else{
			facing = 1;
			image_xscale = -1;
		}
		
		// Am I close enough to stop moving and attack?
		if (distance_to_object(obj_Player) < 100) {
			gotThere = true;
			velocity_x = 0;
			velocity_y = 0;
			
		// How to move
		}else if(!charging){
			
			gotThere = false;
			
			// Should I move up or down?
			if((obj_Player.y - y) > 100){
				velocity_y = spd;			// down
			}
			else if((obj_Player.y - y) < -100){
				velocity_y = -spd;			// up
			}
			
			// Should I move left or right?
			if(abs(obj_Player.x - x) > 100){
				velocity_x = facing * spd;
			}
		} 
		
		// Attacks player
		if(gotThere && canFire){
			charging = true;
			targetx = obj_Player.x;
			targety = obj_Player.y;
			alarm[4] = room_speed * 1;
			animate_attack = true;
			alarm[3] = 29;
			canFire = false;
			alarm[1] = room_speed * 3;
		}
		
		/*
		#region Animations
		if(animate_attack){
			sprite_index = spr_Slimezooka_Attack;
		} else if(velocity_x != 0){
			sprite_index = spr_Slimesooka_Move;
		} else {
			sprite_index = spr_Slimezooka_Idle;
		}
		#endregion
		
		
		
	}
	else{
		sprite_index = spr_Slimezooka_Idle;
	}
	
	*/
	
	img_rot = 12 * image_xscale * (velocity_x / spd);
	gun_rot = 90 + point_direction(x, y, targetx, targety);
	}
}

if(hitpoints <= 0){
	instance_create_layer(x, y, layer, obj_RobotDeathExplosion);
	instance_destroy();
}

