/// @description Insert description here
// You can write your code in this editor

audio_play_sound(sndShotHit,10,false);
instance_create_layer(x,y,"Instances",oShotHit);
instance_destroy();

