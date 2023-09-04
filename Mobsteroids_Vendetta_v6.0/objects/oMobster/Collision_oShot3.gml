/// @description Insert description here
// You can write your code in this editor
audio_play_sound(sndExplosion,10,false);
instance_create_layer(x,y,"Instances",oExplosion);
instance_destroy(other);

hp = hp-10;

if(hp<=0)
{
	audio_play_sound(sndEnemyDeath,10,false);
	instance_create_layer(x,y,"Instances",oExplosion);
	instance_destroy();
}