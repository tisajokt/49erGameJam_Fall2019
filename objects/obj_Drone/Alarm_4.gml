/// @description Fire Projectile

bullet = instance_create_layer(x + (sign(facing) * 23), y + 1, layer, obj_Laser);
bullet.myFacing = facing;