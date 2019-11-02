switch(weapon){
	case 0: //pitchfork
		if(move_state = move_state.idle){
			sprite_index = spr_PitchforkIdle;
		} else if(move_state = move_state.running){
			sprite_index = spr_PitchforkRun;
		} else if(move_state = move_state.attack){
			sprite_index = spr_PitchforkAttack;
		}
		break;
	case 1: //crossbow
		if(move_state = move_state.idle){
			sprite_index = spr_CrossbowIdle
		} else if(move_state = move_state.running){
			sprite_index = spr_CrossbowRun;
		} else if(move_state = move_state.attack){
			sprite_index = spr_CrossbowAttack;
		}
		break;
	case 2: //sword
		if(move_state = move_state.idle){
			sprite_index = spr_SwordIdle
		} else if(move_state = move_state.running){
			sprite_index = spr_SwordRun;
		} else if(move_state = move_state.attack){
			sprite_index = spr_SwordAttack;
		}
		break;
}