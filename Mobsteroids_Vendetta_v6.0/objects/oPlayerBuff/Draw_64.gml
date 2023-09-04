/// @description Insert description here
// You can write your code in this editor
hp = clamp(hp,0,maxHP);
for(var i=0; i<hp; i++)
{
	draw_sprite(sHeart,0,hh+(offset*i),vv);
}
