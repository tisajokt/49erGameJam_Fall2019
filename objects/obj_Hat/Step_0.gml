switch(hat_num){
	case 0: //base hat
		if(move_state = move_state.idle){
			sprite_index = spr_BaseHatIdle;
		} else if(move_state = move_state.running){
			sprite_index = spr_BaseHatRun;
		} else if (move_state = move_state.attack){
			switch(weapon){
				case 0: //pitchfork
					sprite_index = spr_BaseHatPicthforkAttack;
					break;
				case 1: //crossbow
					sprite_index = spr_BaseHatCrossbowAttack;
					break;
				case 2: //sword
					sprite_index = spr_BaseHatSwordAttack;
					break;
			}
		}
		break;
	case 1: //speed hat
		sprite_index = spr_SpeedHat;
		break;
	case 2: //power hat
		sprite_index = spr_PowerHat;
		break;
}