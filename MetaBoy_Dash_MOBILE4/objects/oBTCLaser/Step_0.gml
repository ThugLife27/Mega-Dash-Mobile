/// @description Insert description here
// You can write your code in this editor
if(instance_exists(oBTCBoy) && image_index <= 4)
{
	y = oBTCBoy.y-150;
}

if(image_index >= 5)
{
	image_speed = 0;
	x = x - 70;
}

if(x < -200){instance_destroy();}




