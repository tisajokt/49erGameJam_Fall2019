special_effect_type = other.type_num;
random_value = round(random_range(0,1));

show_debug_message(string(random_value));
switch(special_effect_type){
	case 0:
		if(random_value == 0){
			spd -= 4;
		}
		else if(random_value == 1){
			spd += 4;
		}
		break;
	case 1:
		if(random_value == 0){
			//Turn on pop music
		}
		else if(random_value == 1){
			attack_damage += 4;
		}
		
		break;
	case 2:
		if(random_value == 0){
			can_move = false;
		}
		else if(random_value == 1){
			spd += 5;
		}
		break;
}
has_effect = true;
alarm[4] = room_speed * 6;