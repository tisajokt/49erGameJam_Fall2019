if(has_effect){
	if(random_value == 0){
		draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, 1, 0, c_red, 1);
	}
	else if(random_value == 1){
		draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, 1, 0, c_green, 1);
	}
	
}
else{
	if(white_flash){
		shader_set(shdr_takeDamage);
		draw_self();
		shader_reset();
	} else {
		draw_self();
	}
}

draw_text_ext_transformed(x, y - 30, hits, 10, 100000, .5, .5, 0);
