/// @description Insert description here
// You can write your code in this editor
controller = (gamepad_button_check_pressed(0,gp_start));

if (controller > 0)
{
	room_goto(rLvl1Screen);
}