if(instance_exists(obj_Player)){
	switch(weapon){
		case 0: //pitchfork
			if(move_state = move_state.idle){
				sprite_index = spr_PitchforkRun;
			} else if(move_state = move_state.running){
				sprite_index = spr_PitchforkRun;
			} else if(move_state = move_state.attack){
				sprite_index = spr_PitchforkAttack;
			} else if(move_state = move_state.jump_rising){
				sprite_index = spr_PitchforkJumpRising;
			} else if(move_state = move_state.jump_falling){
				sprite_index = spr_PitchforkJumpFalling;
			}
			break;
		case 1: //crossbow
			if(move_state = move_state.idle){
				sprite_index = spr_CrossbowIdle
			} else if(move_state = move_state.running){
				sprite_index = spr_CrossbowRun;
			} else if(move_state = move_state.attack){
				sprite_index = spr_CrossbowAttack;
			} else if(move_state = move_state.jump_rising){
				sprite_index = spr_CrossbowJumpRising;
			} else if(move_state = move_state.jump_falling){
				sprite_index = spr_CrossbowJumpFalling;
			}
			break;
		case 2: //sword
			if(move_state = move_state.idle){
				sprite_index = spr_SwordIdle
			} else if(move_state = move_state.running){
				sprite_index = spr_SwordRun;
			} else if(move_state = move_state.attack){
				sprite_index = spr_SwordAttack;
			} else if(move_state = move_state.jump_rising){
				sprite_index = spr_SwordJumpRising;
			} else if(move_state = move_state.jump_falling){
				sprite_index = spr_SwordJumpFalling;
			}
			break;
	}
}
