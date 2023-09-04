/// @description Insert description here
// You can write your code in this editor
/// @description Insert description here
// You can write your code in this editor

// Get input from the keyboard
left = keyboard_check(ord("A")) || (gamepad_axis_value(0,gp_axislh) < 0);
right = keyboard_check(ord("D")) || (gamepad_axis_value(0,gp_axislh) > 0);
up = keyboard_check(ord("W")) || (gamepad_axis_value(0,gp_axislv) < 0);
down = keyboard_check(ord("S")) || (gamepad_axis_value(0,gp_axislv) > 0);

//Weapon Switching + firing
fireright = keyboard_check_pressed(vk_right) || (gamepad_button_check_pressed(0,gp_face2));
fireleft = keyboard_check_pressed(vk_left) || (gamepad_button_check_pressed(0,gp_face3));
fireup = keyboard_check_pressed(vk_up) || (gamepad_button_check_pressed(0,gp_face4));
firedown = keyboard_check_pressed(vk_down) || (gamepad_button_check_pressed(0,gp_face1));

//Transformation Mechanic
transform = keyboard_check(ord("T"))

if(transform > 0)
{
	instance_destroy();
	instance_create_layer(x,y,"Instances",oPlayerReverse);
}


//Explosion Power
if(fireright)
{
	instance_create_layer(x+50,y,"Instances",oExplosion);
	audio_play_sound(sndExplosion,10,false);
}
if(fireleft)
{
	instance_create_layer(x-50,y,"Instances",oExplosion);
	audio_play_sound(sndExplosion,10,false);
}
if(fireup)
{
	instance_create_layer(x,y-75,"Instances",oExplosion);
	audio_play_sound(sndExplosion,10,false);
}
if(firedown)
{
	instance_create_layer(x,y+75,"Instances",oExplosion);
	audio_play_sound(sndExplosion,10,false);
}

//moving
hor = (right - left)*moveSpeed;
ver = (down - up)*moveSpeed;


if(hor > 0) //moving to the right
{
	sprite_index = sPlayerBuffSideways;
	image_xscale = 1;
	image_speed = 1;
}
else if(hor < 0) //moving to the left
{
	sprite_index = sPlayerBuffSideways;
	image_xscale = -1;
	image_speed = 1;
}
//Vertical facing
else if (ver > 0) //moving down
{
	sprite_index = sPlayerGrowth;
	image_yscale = 1;
	image_speed = 1;
}
else if (ver < 0) //moving up
{
	sprite_index = sPlayerBuffUp;
	image_yscale = 1;
	image_speed = 1;
}
else //must not be moving
{
	sprite_index = sPlayerGrowthStill;
	image_speed = 0;
	image_index = 0;
}
//collision check
if(place_meeting(x+hor,y,oRoomWall))
{
	while(!place_meeting(x+sign(hor),y,oRoomWall))
	{
		x += sign(hor);
	}
	hor = 0;
}

x += hor;

if(place_meeting(x,y+ver,oRoomWall))
{
	while(!place_meeting(x,y+sign(ver),oRoomWall))
	{
		y += sign(ver);
	}
	ver = 0;
}

y += ver;

