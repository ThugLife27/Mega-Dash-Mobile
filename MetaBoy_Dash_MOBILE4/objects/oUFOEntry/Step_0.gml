/// @description Insert description here
// You can write your code in this editor
if(!instance_exists(oPlayerAlien))
{instance_destroy();}
else
{
	if(x < 100)
	{
		x = x + 25;
	}
	else
	{		
			if((x-oPlayerAlien.x) < 0)
			{move_angle = arctan((y-oPlayerAlien.y)/(x-oPlayerAlien.x))*180/pi;}
			else
			{move_angle = arctan((y-oPlayerAlien.y)/(x-oPlayerAlien.x))*180/pi + 180;}
	
			hsp = 25*cos(move_angle*pi/180);
			vsp = 25*sin(move_angle*pi/180);
		
			x = x + hsp;
			y = y + vsp;
	}
}