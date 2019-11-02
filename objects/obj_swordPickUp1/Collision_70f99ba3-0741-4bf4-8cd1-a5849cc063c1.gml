if (obj_Player.hasWeapon || obj_Player.hasShield) {
} else if (obj_Player.hasWeapon == false && obj_Player.hasShield == false) {
obj_Player.weapon = 2;
obj_Player.hasWeapon = true;
instance_destroy();
}