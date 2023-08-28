/// @description Insert description here
// You can write your code in this editor
if(instance_exists(target) && image_index <= 4)
{
	x = target.x+100;
	y = target.y;
}

if(image_index >= 5)
{
	image_speed = 0;
	x = x - 30;
}

if(x < -200){instance_destroy();}




