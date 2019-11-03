/// @description Insert description here
// You can write your code in this editor
if (obj_Player.hasmArmor == true || obj_Player.haslArmor == true) {
} else {
obj_Player.hasmArmor = true;
obj_Player.armor = 2;
instance_destroy();
}