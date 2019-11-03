if(instance_exists(obj_Player)){
if(white_flash){
	shader_set(shdr_takeDamage);
	//draw_self();
	if(!charging){
		draw_sprite_ext(spr_DroneLaserGun, 0, x, y, 1, 1, 90 + point_direction(x, y, obj_Player.x, obj_Player.y),c_white, 1);
	} else {
		draw_sprite_ext(spr_DroneLaserGun, 0, x, y, 1, 1, gun_rot, c_white, 1);
	}
	draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, img_rot, c_white, 1);
	shader_reset();
} else {
	if(!charging){
		draw_sprite_ext(spr_DroneLaserGun, 0, x, y, 1, 1, 90 + point_direction(x, y, obj_Player.x, obj_Player.y),c_white, 1);
	} else {
		draw_sprite_ext(spr_DroneLaserGun, 0, x, y, 1, 1, gun_rot, c_white, 1);
	}
	draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, img_rot, c_white, 1);
}

//draw_text(x, y - 8, hitpoints);
draw_text_ext_transformed(x - 4, y - 16, hitpoints,
10, 100000, .5, .5, 0);

}