/// @description Insert description here
// You can write your code in this editor
if (obj_Player.haslArmor == true || obj_Player.hasmArmor == true) {
} else {
obj_Player.haslArmor = true;
obj_Player.armor = 1;
instance_destroy();
}