/// @description Insert description here
// You can write your code in this editor
quit = (gamepad_button_check_pressed(0,gp_shoulderl));
restart = (gamepad_button_check_pressed(0,gp_shoulderr));

if (quit > 0)
{
	game_end();
}

if (restart > 0)
{
	game_restart();
}