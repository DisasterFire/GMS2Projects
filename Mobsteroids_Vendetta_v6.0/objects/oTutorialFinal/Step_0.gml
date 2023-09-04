/// @description Insert description here
// You can write your code in this editor
var count = instance_number(oMobster);
var body = instance_number(oPlayer);


if(count <= 0 && body >= 1)
{
	instance_create_layer(oPlayer.x,oPlayer.y,"Instances",oPlayerWin);
	instance_destroy(oPlayer);
}