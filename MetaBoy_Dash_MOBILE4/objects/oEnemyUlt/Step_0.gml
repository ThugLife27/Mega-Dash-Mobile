/// @description Insert description here
// You can write your code in this editor

if(enemy_dead == 0)
x = x - 55;
image_angle = image_angle + rotate_speed;

if(flash == 0 && enemy_dead == 1)
{instance_destroy();}

if(x < -200)
{instance_destroy();}


