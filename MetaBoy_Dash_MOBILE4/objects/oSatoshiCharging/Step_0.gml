/// @description Insert description here
// You can write your code in this editor
if(instance_exists(target))
{
	x = target.x;
	y = target.y;
}
else{instance_destroy();}

timer--;
if(timer == 0)
{instance_destroy();}

