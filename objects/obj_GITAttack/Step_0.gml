if(state != 1){
	move_towards_point(targetx, targety, 1);
	
	
	if((abs(x - targetx) <= 1) && (abs(y - targety) <= 1)){
		instance_destroy();
	}
	
	
	
	
	
}