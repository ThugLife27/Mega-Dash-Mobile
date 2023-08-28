/// @description Insert description here
// You can write your code in this editor

if(!variable_instance_exists(id,"move_angle"))
{move_angle = 0;}

v_speed = 27;

hsp = v_speed * cos(move_angle);
vsp = v_speed * sin(move_angle);

destroy_timer = 4;




