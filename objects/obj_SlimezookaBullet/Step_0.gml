
x = x + (myFacing * spd);

if(myFacing == 1){
	image_xscale = -1;
}
else{
	image_xscale = 1;
}


if(place_meeting(x, y, obj_Player)){
	obj_Player.hits += -1;
	instance_destroy();
}

