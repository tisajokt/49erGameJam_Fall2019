if(instance_exists(obj_Player)){
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
			} else if(move_state = move_state.jump_falling){
				sprite_index = spr_BaseHatJumpFalling;
			} else if(move_state = move_state.jump_rising){
				sprite_index = spr_BaseHatJumpRising;
			}
			break;
		case 1: //speed hat
			if(move_state = move_state.idle){
				sprite_index = spr_SpeedHatIdle;
			} else if(move_state = move_state.running){
				sprite_index = spr_SpeedHatRun;
			} else if (move_state = move_state.attack){
				switch(weapon){
					case 0: //pitchfork
						sprite_index = spr_SpeedHatPitchforkAttack;
						break;
					case 1: //crossbow
						sprite_index = spr_SpeedHatCrossbowAttack;
						break;
					case 2: //sword
						sprite_index = spr_SpeedHatSwordAttack;
						break;
				}
			} else if(move_state = move_state.jump_falling){
				sprite_index = spr_SpeedHatJumpFalling;
			} else if(move_state = move_state.jump_rising){
				sprite_index = spr_SpeedHatJumpRising;
			}
			break;
		case 2: //power hat
			sprite_index = spr_PowerHat;
			break;
	}
}