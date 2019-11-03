
event_inherited();

if(instance_exists(obj_Player)){
	if(active){
		
		y_expand = 16;
		
		
		if((obj_Player.x > x - 32) && obj_Player.x < x + 32){
			
			if((obj_Player.y > y - y_expand && obj_Player.y < y + (sprite_height) + y_expand)){
				if(canFlyBack){
					scr_DamagePlayer();
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
		
		
		// working somehow
		if(gotThere){
			sprite_index = spr_HandbotAttack;
		}
		else{
			sprite_index = spr_HandbotRun;
		}
		
		
	}
	else{
		velocity_x = 0;
		sprite_index = spr_HandbotJump;
		
	}
}
