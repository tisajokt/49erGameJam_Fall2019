global.part_Fire = part_system_create();

// create particle types
#region Fire particle
globalvar p_fire;
p_fire = part_type_create();

part_type_speed(p_fire, .4, .1, -.001, 0);
part_type_direction(p_fire, 75, 105, 0, 30);
part_type_color3(p_fire, c_yellow, c_orange, c_red);
part_type_life(p_fire, 80, 100);
part_type_gravity(p_fire, .001, -90);
part_type_sprite(p_fire, spr_PartFire, true, false, true);
#endregion