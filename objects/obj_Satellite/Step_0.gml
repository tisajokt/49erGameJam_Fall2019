y += 2;

if(y >= player_y){
	instance_create_layer(x, y, layer, obj_Explosion);
	instance_destroy();
}