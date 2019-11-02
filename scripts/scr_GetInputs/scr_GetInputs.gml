// only works for xbox controllers
// any controller run through steam is considered an xbox controller

controller = argument0;

// default inputs
input_left = keyboard_check(ord("A"));
input_right = keyboard_check(ord("D"));
input_jump = keyboard_check_pressed(vk_space) || keyboard_check_pressed(ord("W"));


input_attack = keyboard_check_pressed(ord("I"));
input_specialAttack1 = keyboard_check_pressed(ord("O"));
input_specialAttack2 = keyboard_check_pressed(ord("P"));

// if gamepad is connected
if(gamepad_is_connected(controller)){
	// gamepad inputs go here
}