/// @description Insert description here
// You can write your code in this editor

x = x - global.roomspeed;

if(x < -100 && cat_alive == 1){instance_destroy();}

if(cat_alive == 0)
{
	image_alpha = 0;
	cat_timer--;
}

if(cat_timer == 0)
{
	instance_destroy();
}