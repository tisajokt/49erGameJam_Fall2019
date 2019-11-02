

if(white_flash){
	shader_set(shdr_takeDamage);
	draw_self();
	shader_reset();
} else {
	draw_self();
}

