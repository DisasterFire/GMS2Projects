/// @description Insert description here
// You can write your code in this editor
reenter = (gamepad_button_check_pressed(0,gp_select));
start = (gamepad_button_check_pressed(0,gp_start));

if (reenter > 0)
{
	game_restart();
}

if (start > 0)
{
	room_goto_next();
}