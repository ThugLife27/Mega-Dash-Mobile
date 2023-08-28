// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function MultiTouchCheckPressed(){
d = 0;
for(d = 0; d < 4; d++){
    if (device_mouse_check_button_pressed(d,mb_left) && position_meeting(device_mouse_x(d),device_mouse_y(d), id))
	{
		return 1
	};
}

return 0;
}

function MultiTouchCheck(){
d = 0;
for(d = 0; d < 4; d++){
    if (device_mouse_check_button(d,mb_left) && position_meeting(device_mouse_x(d),device_mouse_y(d), id)) 
	{
		return 1
	};
}

return 0;
}