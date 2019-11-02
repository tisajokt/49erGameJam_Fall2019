/// @description Fire Projectile

laser = instance_create_layer(x + (sign(facing) * 23), y + 1, layer, obj_Laser);
laser.x = x;
laser.y = y;
laser.image_angle =  90 + point_direction(x, y, targetx, targety);
charging = false;
