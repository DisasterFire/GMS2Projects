/// @description Insert description here
var count = instance_number(oMobster);
var port = instance_number(oMobsterSpawner);
var body = instance_number(oPlayer);


if(count <= 0 && port <= 0 && body >= 1)
{
	instance_create_layer(oPlayer.x,oPlayer.y,"Instances",oPlayerWin);
	instance_destroy(oPlayer);
}

