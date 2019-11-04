if(playerIsDead){
	playerIsDead = false;
	alarm[0] = room_speed * 2;
	scr_PlayAudio(sfx_player_def);
	//room_goto(MainMenu);
}

if(livess == 0){
	audio_stop_all();
	room_goto(MainMenu);
}

if(bossIsDead){
	alarm[1] = room_speed * 2;
}