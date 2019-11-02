switch(hat_num){
	case 0: //base hat
		if(move_state = move_state.idle){
			sprite_index = spr_BaseHatIdle;
		} else if(move_state = move_state.running){
			sprite_index = spr_BaseHatRun;
		}
		break;
	case 1: //speed hat
		sprite_index = spr_SpeedHat;
		break;
	case 2: //power hat
		sprite_index = spr_PowerHat;
		break;
}