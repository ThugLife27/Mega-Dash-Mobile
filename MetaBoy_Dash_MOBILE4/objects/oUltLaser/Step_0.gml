/// @description Insert description here
// You can write your code in this editor

if(sprite_index == sUltLaserBlue)
{
	if(image_index == 1)
	{
		image_speed = 0;
		x = x + 25;
	}
}
else
{
	x = x + 32;
}
	
if(x > 2300)
{instance_destroy();}




