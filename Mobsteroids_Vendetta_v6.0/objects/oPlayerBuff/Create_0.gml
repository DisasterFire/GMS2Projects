/// @description Insert description here
// You can write your code in this editor

//Health Variables
hp = 5;
maxHP = 5;
beenHit = false;


//Movement variables
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


//movement variables
hor = 0;
ver = 0;
moveSpeed = 2;

//transformation
transform = 0;

//Progression 
start = instance_number(oMobster);


//Controller
gamepad_set_axis_deadzone(0,0.7);
