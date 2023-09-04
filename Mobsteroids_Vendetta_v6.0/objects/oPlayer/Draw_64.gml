/// @description Insert description here
// You can write your code in this editor
hp = clamp(hp,0,maxHP);
lasercharge = clamp(lasercharge,0,maxlaser);
bombinventory = clamp(bombinventory,0,maxbombs);

for(var i=0; i<hp; i++)
{
	draw_sprite(sHeart,0,hh+(offset*i),vv);
}

if(pistols = true)
{
	draw_sprite(sPistolGUI,0,10,35);
	draw_text(300,10,"Laser Charge: ");
	draw_text(410,10,lasercharge);
	draw_text(300,60,"Bombs: ");
	draw_text(350,60,bombinventory);
}

if(laser = true)
{
	draw_sprite(sLaserGUI,0,10,35);
	draw_text(300,10,"Laser Charge: ");
	draw_text(410,10,lasercharge);
	draw_text(300,60,"Bombs: ");
	draw_text(350,60,bombinventory);
}

if(minigun = true)
{
	draw_sprite(sMinigunUI,0,10,35);
	draw_text(300,10,"Laser Charge: ");
	draw_text(410,10,lasercharge);
	draw_text(300,60,"Bombs: ");
	draw_text(350,60,bombinventory);
}
if(seppuku = true)
{
	draw_sprite(sSkull,0,10,35);
	draw_text(300,10,"Laser Charge: ");
	draw_text(410,10,lasercharge);
	draw_text(300,60,"Bombs: ");
	draw_text(350,60,bombinventory);
}
