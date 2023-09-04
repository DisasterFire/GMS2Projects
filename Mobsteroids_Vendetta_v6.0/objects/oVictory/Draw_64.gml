/// @description Insert description here
// You can write your code in this editor
draw_sprite_ext(sPixel,0,0,0,1280,200,0,c_black,1);
draw_sprite_ext(sPixel,0,0,520,1280,200,0,c_black,1);

draw_set_color(c_white);
draw_set_halign(fa_center);
draw_set_valign(fa_top);
draw_set_font(fFont);
draw_text(640, 600,print);

if (holdspace > 0)
{
	draw_text(640,25,"Press R to restart\nHold Space to Quit");
}



draw_sprite_ext(sPixel,0,0,0,1280,720,0,c_black,a);