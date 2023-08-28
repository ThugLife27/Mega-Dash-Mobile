/// @description Insert description here
// You can write your code in this editor
if(instance_exists(oPlayer))
{
	x = oPlayer.x+5;
	y = oPlayer.y-10;
}
else
{instance_destroy();}

if(damaged == 1 && flash == 0)
{instance_destroy();}