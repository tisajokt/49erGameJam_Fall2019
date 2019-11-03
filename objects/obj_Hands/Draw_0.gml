if(instance_exists(obj_Player)){
	if(obj_Player.white_flash){
		shader_set(shdr_takeDamage);
		draw_self();
		shader_reset();
	} else {
		draw_self();
	}
}