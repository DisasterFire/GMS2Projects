/// @description Insert description here
// You can write your code in this editor

start = (gamepad_button_check_pressed(0,gp_start));

if(start > 0)
{
	room_goto(rLevel1);
}