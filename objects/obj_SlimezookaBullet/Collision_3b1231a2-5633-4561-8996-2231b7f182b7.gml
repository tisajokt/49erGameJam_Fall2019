
if (obj_Player.armor == 3 || obj_Player.armor == 4) {
    instance_destroy();
} else {
	obj_Player.playerHealth -= 1;
}
//instance_destroy();