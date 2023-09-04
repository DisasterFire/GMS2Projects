/// @description Insert description here
// You can write your code in this editor
//collision check
if(place_meeting(x+hor,y,oRoomWall))
{
	while(!place_meeting(x+sign(hor),y,oRoomWall))
	{
		x += sign(hor);
	}
	hor = 0;
}

x += hor;

if(place_meeting(x,y+ver,oRoomWall))
{
	while(!place_meeting(x,y+sign(ver),oRoomWall))
	{
		y += sign(ver);
	}
	ver = 0;
}

y += ver;