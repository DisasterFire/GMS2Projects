/// @description Insert description here
// You can write your code in this editor

// Get input from the keyboard
left = keyboard_check(ord("A")) || (gamepad_axis_value(0,gp_axislh) < 0);
right = keyboard_check(ord("D")) || (gamepad_axis_value(0,gp_axislh) > 0);
up = keyboard_check(ord("W")) || (gamepad_axis_value(0,gp_axislv) < 0);
down = keyboard_check(ord("S")) || (gamepad_axis_value(0,gp_axislv) > 0);

//Weapon Switching + firing
fireright = keyboard_check(vk_right) || (gamepad_button_check_pressed(0,gp_face2));
fireleft = keyboard_check(vk_left) || (gamepad_button_check_pressed(0,gp_face3));
fireup = keyboard_check(vk_up) || (gamepad_button_check_pressed(0,gp_face4));
firedown = keyboard_check(vk_down) || (gamepad_button_check_pressed(0,gp_face1));

weaponswappistols = keyboard_check_pressed(ord("1"));
weaponswaplaser = keyboard_check_pressed(ord("2"));
weaponswapminigun = keyboard_check_pressed(ord("3"));
weaponswapseppuku = keyboard_check_pressed(ord("4"));


//Transformation
transform = keyboard_check(ord("T"))

if(transform > 0)
{
	instance_destroy();
	instance_create_layer(x,y,"Instances",oPlayerTransformation);
}

if(weaponswappistols)
{
	audio_play_sound(sndWeaponSelect,10,false);
	pistols = true;
	laser = false;
	minigun = false;
	seppuku = false;
}
else if(weaponswaplaser)
{
	audio_play_sound(sndWeaponSelect,10,false);
	pistols = false;
	laser = true;
	minigun = false;
	seppuku = false;
}
else if(weaponswapminigun)
{
	audio_play_sound(sndWeaponSelect,10,false);
	pistols = false;
	laser = false;
	minigun = true;
	seppuku = false;
}

else if(weaponswapseppuku)
{
	audio_play_sound(sndAlarm,10,false);
	pistols = false;
	laser = false;
	minigun = false;
	seppuku = true;
}

if(pistols)
{
	fireright = keyboard_check_pressed(vk_right) || (gamepad_button_check_pressed(0,gp_face2));
	fireleft = keyboard_check_pressed(vk_left) || (gamepad_button_check_pressed(0,gp_face3));
	fireup = keyboard_check_pressed(vk_up) || (gamepad_button_check_pressed(0,gp_face4));
	firedown = keyboard_check_pressed(vk_down) || (gamepad_button_check_pressed(0,gp_face1));
}

else if(laser)
{
	fireright = keyboard_check(vk_right);
	fireleft = keyboard_check(vk_left);
	fireup = keyboard_check(vk_up);
	firedown = keyboard_check(vk_down);
}
else if(minigun)
{
	fireright = keyboard_check_pressed(vk_right);
	fireleft = keyboard_check_pressed(vk_left);
	fireup = keyboard_check_pressed(vk_up);
	firedown = keyboard_check_pressed(vk_down);
}

else if (seppuku)
{
	fireright = keyboard_check_pressed(vk_right);
	fireleft = keyboard_check_pressed(vk_left);
	fireup = keyboard_check_pressed(vk_up);
	firedown = keyboard_check_pressed(vk_down);
}

//moving
hor = (right - left)*moveSpeed;
ver = (down - up)*moveSpeed;

//firing
if(fireright)
{
	if(pistols)
	{
		var inst = instance_create_layer(x,y,"Instances",oShot);
		inst.speed = bulletSpeed1;
		audio_play_sound(sndWeapon1Shot,15,false);
	}
	else if(laser)
	{
		if(lasercharge >=1)
		{
			var inst = instance_create_layer(x,y,"Instances",oLaser);
			inst.speed = bulletSpeed2;
			audio_play_sound(sndLaserBeam,10,false);
			lasercharge -= 1;
		}
		if(lasercharge <=1)
		{
			audio_play_sound(sndLaserHit,10,false);
		}
	}
	else if(minigun)
	{
		if(bombinventory >=1)
		{
			var inst = instance_create_layer(x,y,"Instances",oShot3);
			inst.speed = bulletSpeed3;
			audio_play_sound(sndArmSoundEffect,10,false);
			bombinventory -= 1;
		}
		if(bombinventory <=1)
		{
			audio_play_sound(sndNoAmmo,10,false);
		}
	}
	
	else if(seppuku)
	{
		hp = 0;
		if(hp <=0)
		{
			audio_play_sound(sndPlayerDeath,10,false);
			instance_create_layer(x,y,"Instances",oPlayerFlipOff);
			instance_destroy(oMobster);
			instance_destroy(oMobster2);
			instance_destroy();	
		}
	}
	
}

if(fireleft)
{
	if(pistols)
	{
		var inst = instance_create_layer(x,y,"Instances",oShot);
		inst.direction = 180;
		inst.speed = bulletSpeed1;
		audio_play_sound(sndWeapon1Shot,15,false);
	}
	else if(laser)
	{
		if(lasercharge >=1)
		{
			var inst = instance_create_layer(x,y,"Instances",oLaser);
			inst.speed = bulletSpeed2;
			inst.direction = 180;
			audio_play_sound(sndLaserBeam,10,false);
			lasercharge -= 1;
		}
		if(lasercharge <=1)
		{
			audio_play_sound(sndLaserHit,10,false);
		}
	}
	else if(minigun)
	{
		if(bombinventory >=1)
		{
			var inst = instance_create_layer(x,y,"Instances",oShot3);
			inst.speed = bulletSpeed3;
			inst.direction = 180;
			audio_play_sound(sndArmSoundEffect,10,false);
			bombinventory -= 1;
		}
		if(bombinventory <=1)
		{
			audio_play_sound(sndNoAmmo,10,false);
		}
	}
	
	else if(seppuku)
	{
		hp = 0;
		if(hp <=0)
		{
			audio_play_sound(sndPlayerDeath,10,false);
			instance_create_layer(x,y,"Instances",oPlayerFlipOff);
			instance_destroy(oMobster);
			instance_destroy(oMobster2);
			instance_destroy();	
		}
	}
	
}

if(fireup)
{
	if(pistols)
	{
		var inst = instance_create_layer(x,y,"Instances",oShotVertical);
		inst.direction = 90;
		inst.speed = bulletSpeed1;
		audio_play_sound(sndWeapon1Shot,15,false);
	}
	else if(laser)
	{
		if(lasercharge >=1)
		{
			var inst = instance_create_layer(x,y,"Instances",oLaserV);
			inst.speed = bulletSpeed2;
			inst.direction = 90;
			audio_play_sound(sndLaserBeam,10,false);
			lasercharge -= 1;
		}
		if(lasercharge <=1)
		{
			audio_play_sound(sndLaserHit,10,false);
		}
	}
	else if(minigun)
	{
		if(bombinventory >=1)
		{
			var inst = instance_create_layer(x,y,"Instances",oShot3);
			inst.speed = bulletSpeed3;
			inst.direction = 90;
			audio_play_sound(sndArmSoundEffect,10,false);
			bombinventory -= 1;
		}
		if(bombinventory <=1)
		{
			audio_play_sound(sndNoAmmo,10,false);
		}
	}
	
	else if(seppuku)
	{
		hp = 0;
		if(hp <=0)
		{
			audio_play_sound(sndPlayerDeath,10,false);
			instance_create_layer(x,y,"Instances",oPlayerFlipOff);
			instance_destroy(oMobster);
			instance_destroy(oMobster2);
			instance_destroy();	
		}
	}
	
}

if(firedown)
{
	if(pistols)
	{
		var inst = instance_create_layer(x,y,"Instances",oShotVertical);
		inst.direction = 270;
		inst.speed = bulletSpeed1;
		audio_play_sound(sndWeapon1Shot,15,false);
	}
	else if(laser)
	{
		if(lasercharge >=1)
		{
			var inst = instance_create_layer(x,y,"Instances",oLaserV);
			inst.speed = bulletSpeed2;
			inst.direction = 270;
			audio_play_sound(sndLaserBeam,10,false);
			lasercharge -= 1;
		}
		if(lasercharge <=1)
		{
			audio_play_sound(sndLaserHit,10,false);
		}
	}
	else if(minigun)
	{
		if(bombinventory >=1)
		{
			var inst = instance_create_layer(x,y,"Instances",oShot3);
			inst.speed = bulletSpeed3;
			inst.direction = 270;
			audio_play_sound(sndArmSoundEffect,10,false);
			bombinventory -= 1;
		}
		if(bombinventory <=1)
		{
			audio_play_sound(sndNoAmmo,10,false);
		}
	}
	
	else if(seppuku)
	{
		hp = 0;
		if(hp <=0)
		{
			audio_play_sound(sndPlayerDeath,10,false);
			instance_create_layer(x,y,"Instances",oPlayerFlipOff);
			instance_destroy(oMobster);
			instance_destroy(oMobster2);
			instance_destroy();	
		}
	}
	
}




if(hor > 0) //moving to the right
{
	sprite_index = sPlayer;
	image_xscale = 1;
	image_speed = 1;
}
else if(hor < 0) //moving to the left
{
	sprite_index = sPlayer;
	image_xscale = -1;
	image_speed = 1;
}
//Vertical facing
else if (ver > 0) //moving down
{
	sprite_index = sPlayerDown;
	image_yscale = 1;
	image_speed = 1;
}
else if (ver < 0) //moving up
{
	sprite_index = sPlayerUp;
	image_yscale = 1;
	image_speed = 1;
}
else //must not be moving
{
	sprite_index = sPlayerStill;
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

