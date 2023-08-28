/// @description Insert description here
// You can write your code in this editor
hsp = global.roomspeed + 15

if(image_index < 2)
{
	vsp = oProbert.vsp;
	y = y - vsp;
}

if(image_index == 2)
{
	image_speed = 0;
	x = x - hsp;	
}

if(x < -200){instance_destroy();}




