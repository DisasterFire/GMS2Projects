/// @description Insert description here
// You can write your code in this editor
start = (gamepad_button_check_pressed(0,gp_start));
controls = (gamepad_button_check_pressed(0,gp_select));


if(start > 0)
{
	room_goto_next();
}

if(controls > 0)
{
	room_goto(rControlsTutorial);
}