repeat(fire_intensity){
	part_particles_create(global.part_Fire, x + irandom_range(-sprite_width * .5, sprite_width * .5), y, p_fire, 1);
}