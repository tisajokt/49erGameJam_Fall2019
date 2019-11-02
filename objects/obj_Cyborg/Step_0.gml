
event_inherited();

if(instance_exists(obj_Player)){
	if(active){
		x_expand = 13;
		y_expand = 16;
		
		if((obj_Player.x > (x - (sprite_width / 2)) - x_expand && obj_Player.x < (x + (sprite_width)) + x_expand + 46)){
			
			if((obj_Player.y > y - y_expand && obj_Player.y < y + (sprite_height) + y_expand)){
				if(canFlyBack){
					scr_DamagePlayer(damage);
					y_push = 5;
						x_push = 3;
				

					if(x < obj_Player.x){
						velocity_x = -x_push;
						velocity_y = -y_push;
						alarm[3] = room_speed / 1.6;
						canFlyBack = false;
					}
					else{
						velocity_x = x_push;
						velocity_y = -y_push;
						alarm[3] = room_speed / 1.6;
						canFlyBack = false;
					}
				}
			}
		}
			
		
		else{
			if(canFlyBack){
				velocity_x = facing * spd;
				gotThere = false;
			}
			
		}
		// controls facing variable
		if(x > obj_Player.x){
			facing = -1;
			image_xscale = 1;
		}
		else{
			facing = 1;
			image_xscale = -1;
		}
		
		/*if(place_meeting(x + velocity_x, y, obj_WallAI)){
			while(!place_meeting(x + sign(velocity_x), y, obj_WallAI)){
				x += sign(velocity_x);
			}
			velocity_x = 0;
		}
		// Should I move left or right?
		else{
			velocity_x = facing * spd;
			gotThere = false;
		}*/
		
		// working somehow
		if(gotThere){
			sprite_index = spr_Cyborg;
		}
		else{
			sprite_index = spr_Cyborg;
		}
		
		
		/*if(canJump){
			if((y - obj_Player.y) > 20){
				canJump = false;
				alarm[3] = room_speed * 2;
				velocity_y += -8;
			}
		}*/
		
		
		
		
	}
	else{
		velocity_x = 0;
		sprite_index = spr_Cyborg;
		
	}
}
