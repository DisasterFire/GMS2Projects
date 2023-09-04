/// @description Insert description here
// You can write your code in this editor
if(instance_exists(oPlayer))
{
	var inst;
	inst = instance_nearest(x,y,oPlayer);
	mp_potential_step(inst.x,inst.y,0.5,false);
}


