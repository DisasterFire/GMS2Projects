/// @description Insert description here
// You can write your code in this editor
hp = 0;
if(hp <=0)
{
	audio_play_sound(sndPlayerDeath,10,false);
	instance_create_layer(x,y,"Instances",oPlayerFlipOff);
	instance_destroy(oMobster);
	instance_destroy(oMobster2);
	instance_destroy();	
}