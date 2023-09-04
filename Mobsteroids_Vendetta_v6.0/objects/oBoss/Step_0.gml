/// @description Insert description here
// You can write your code in this editor
if instance_exists(oPlayer) 
{
    move_towards_point(oPlayer.x, oPlayer.y,1);
}
if place_meeting(x,y,oMobster) {
    with instance_place(x,y,oMobster) 
	{
        move_towards_point(other.x,other.y,-1); //-towards = away
    }
}

if place_meeting(x,y,oBoss) {
    with instance_place(x,y,oBoss) 
	{
        move_towards_point(other.x,other.y,-1); //-towards = away
    }
}

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