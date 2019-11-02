/// @description Insert description here
// You can write your code in this editor
if (!obj_Player.hasWeapon) {
} else if (obj_Player.hasShield != true) {
obj_Player.hasShield = true;
obj_Player.armor = 4;
instance_destroy();
}