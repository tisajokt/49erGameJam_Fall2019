
switch(special_effect_type){
	case 0: //Phone
		if(random_value == 0){
			spd += 4;
		}
		else{
			spd -= 4;
		}
		break;
	case 1:
		if(random_value == 0){
			//Turn off pop music
		}
		else{
			attack_damage -= 4;
		}
		break;
	case 2:
		if(random_value == 0){
			can_move = true;
		}
		else{
			spd -= 5;
		}
		break;
}
has_effect = false;

