/// @description Insert description here
// You can write your code in this editor

if(image_index == 1)
{	
	image_speed = 0;
	x = x + hsp;
	y = y + vsp;
}
	
if(x > 2300)
{instance_destroy();}

if(place_meeting(x,y,oWall) && global.uSTXShotWall == 0)
{
	instance_create_layer(x+50,y,"Explosion",oLaserExplosion2);
	instance_destroy();
}


