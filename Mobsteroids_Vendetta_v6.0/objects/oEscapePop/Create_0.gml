/// @description Insert description here
// You can write your code in this editor
var spawncount = instance_number(oMobsterSpawner);
var count = instance_number(oMobster);
var body = instance_number(oPlayer);


if(spawncount <= 0 && count <= 0 && body >= 1)
{
	instance_create_layer(oEscapePop.x,oEscapePop.y,"Instances",oEscapeHatch)
	instance_destroy(oEscapePop);
}