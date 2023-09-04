/// @description Insert description here
// You can write your code in this editor

hp = 5;
maxHP = 5;
beenHit = false;


//Health Variables
hh = 15;
vv = 10;
offset = 30;

//movement variables
left = 0;
right = 0;
up = 0;
down = 0;

//firing variables
fireleft = 0;
fireright = 0;
fireup = 0;
firedown = 0;

//Weapon System variables/booleans
weaponswappistols = 0;
weaponswaplaser = 0;
weaponswapminigun = 0;
weaponswapseppuku = 0;
weaponswapultimate = 0;

pistols = true;
laser = false;
minigun = false;
seppuku = false;
//movement variables
hor = 0;
ver = 0;

moveSpeed = 2;
bulletSpeed1 = 3;
bulletSpeed2 = 2;
bulletSpeed3 = 0.25;

//Ammo Variables
lasercharge = 1000;
maxlaser = 1000;
bombinventory = 10;
maxbombs = 10;

start = instance_number(oMobster);

gamepad_set_axis_deadzone(0,0.7);

