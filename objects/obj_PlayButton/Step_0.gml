

if (counting == true) {
	counter++;
}

if(point_in_rectangle(mouse_x, mouse_y, x-sprite_width/2, y-sprite_height/2, x+sprite_width/2, y+sprite_height/2))
{
	sprite_index = spr_ButtonSelected;
	if(mouse_check_button(mb_left)){
		audio_stop_all();
		counting = true;
		scr_PlayAudio(sfx_conf);
	}
}
else{
	sprite_index = spr_Button;
}

if (counter == 100) {
	room_goto(rm_Level1);	
}