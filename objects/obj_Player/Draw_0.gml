if(has_effect){
	if(random_value == 0){
		draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, 1, 0, c_red, 1);
	}
	else if(random_value == 1){
		draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, 1, 0, c_green, 1);
	}
	
}
else{
	draw_self();
}
