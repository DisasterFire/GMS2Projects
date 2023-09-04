/// @description Insert description here
// You can write your code in this editor
if(!beenHit)
{
	audio_play_sound(sndPlayerHit,10,false);
	beenHit = true;
	alarm[1] = room_speed*2;
	hp = hp-1;

	if(hp <=0)
	{
		audio_play_sound(sndPlayerDeath,10,false);
		instance_create_layer(x,y,"Instances",oPlayerDeath)
		instance_destroy(oBoss);
		instance_destroy(oMobster);
		instance_destroy();	
	}
}