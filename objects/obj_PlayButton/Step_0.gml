if(point_in_rectangle(mouse_x, mouse_y, x-sprite_width/2, y-sprite_height/2, x+sprite_width/2, y+sprite_height/2))
{
	sprite_index = spr_ButtonSelected;
	if(mouse_check_button(mb_left)){
		room_goto(rm_Level1);
	}
}
else{
	sprite_index = spr_Button;
}