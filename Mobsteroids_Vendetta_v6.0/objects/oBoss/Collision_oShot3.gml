/// @description Insert description here
// You can write your code in this editor
audio_play_sound(sndExplosion,10,false);
instance_create_layer(x,y,"Instances",oShotHit3);
instance_destroy(other);

hp = hp-50;

if(hp<=0)
{
	audio_play_sound(sndEnemyDeath,10,false);
	instance_create_layer(x,y,"Instances",oBossDeath);
	instance_destroy();
}