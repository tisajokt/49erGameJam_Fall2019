special_effect_type = other.type_num;
random_value = random_range(0,1);
switch(special_effect_type){
	case 0:
		if(random_value == 0){
			spd -= 4;
		}
		else{
			spd += 4;
		}
		break;
	case 1:
		if(random_value == 0){
			//Turn on pop music
		}
		else{
			attack_damage += 4;
		}
		
		break;
	case 2:
		if(random_value == 0){
			can_move = false;
		}
		else{
			spd += 5;
		}
		break;
}
has_effect = true;
alarm[4] = room_speed * 6;