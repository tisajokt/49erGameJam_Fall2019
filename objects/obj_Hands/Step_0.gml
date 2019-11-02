switch(weapon_num){
	case 0: // default
		if(move_state = move_state.idle){
			sprite_index = spr_PitchforkIdle;
		} else if(move_state = move_state.running){
			sprite_index = spr_PitchforkRun;
		}
		break;
	case 1: // sword
		if(move_state = move_state.idle){
				sprite_index = spr_SwordIdle;
			} else if(move_state = move_state.running){
				sprite_index = spr_SwordRun;
			}
		break;
	case 2: // crossbow
		if(move_state = move_state.idle){
			sprite_index = spr_CrossbowIdle;
		} else if(move_state = move_state.running){
			sprite_index = spr_CrossbowRun;
		}
		break
		
}