/// @description Insert description here
// You can write your code in this editor

if(instance_exists(oPlayerSTX))
{
x = oPlayerSTX.x;
y = oPlayerSTX.y;

if(oPlayerSTX.hover_mode = 0)
{
	sprite_index = sSTXWingsRun;
	image_index = oPlayerSTX.image_index;
	image_speed = 0;
}
	
else
{
	sprite_index = sSTXWingsHover;
	image_speed = 1;
}	
}
else
{instance_destroy();}



