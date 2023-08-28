/// @description Insert description here
// You can write your code in this editor
if (ready_check == 1)
{
	delay_timer--;
	if (delay_timer == 0)
	{
		keyboard_virtual_hide();
		os_set_orientation_lock(true,false);
		room_goto(StatsPage);
	}
}