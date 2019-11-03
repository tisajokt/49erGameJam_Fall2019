/*if(obj_Player.state = Wizards.fire){
	instance_create_depth(x + obj_Player.attack_offset * obj_Player.facing, y + 2, 100, obj_Attack_Fire);
} else if(obj_Player.state = Wizards.water){
	instance_create_depth(x + obj_Player.attack_offset * obj_Player.facing, y + 2, 100, obj_Attack_Water);
} else if(obj_Player.state = Wizards.earth && obj_Player.grounded){
	instance_create_depth(x + obj_Player.attack_offset * obj_Player.facing, y, 100, obj_Attack_Earth);
} else if(obj_Player.state = Wizards.air){
	instance_create_depth(x + obj_Player.attack_offset * obj_Player.facing, y + 4, 100, obj_Attack_Air);
} else{
	
}

*/


//if(obj_Player.weapon == 1){
//	// start attack timer for 
//	//instance_create_depth(x + obj_Player.attack_offset * obj_Player.facing, y + 2, 100, obj_CrossbowBolt);
//}
//else{
//	instance_create_depth(x + obj_Player.attack_offset * obj_Player.facing, y + 2, 100, obj_BasicAttack);
//}




switch(obj_Player.weapon){
	case 0:
		// create the pitchfork hitbox
		instance_create_layer(x, y, obj_Player.layer, obj_BasicAttack);
		break;
	case 1:
		// set a timer to shoot the arrow
		obj_Player.alarm[6] = 30;
		break;
	case 2:
		// create the sword hitbox
		instance_create_layer(x + 10, y + 10, obj_Player.layer, obj_BasicAttack);
		break
}
