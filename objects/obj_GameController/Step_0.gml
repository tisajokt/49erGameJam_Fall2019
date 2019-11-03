if(playerIsDead){
	playerIsDead = false;
	alarm[0] = room_speed * 2;
	//room_goto(MainMenu);
}

if(livess == 0){
	room_goto(MainMenu);
}