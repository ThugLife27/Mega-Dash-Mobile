/// @description Insert description here
// You can write your code in this editor

if (ready_check == 1)
{
	if(global.ButtonToggle == 0)
	{
		global.ButtonToggle = 1;
		ready_check = 0;
	}
	else
	{
		global.ButtonToggle = 0;
		ready_check = 0;
	}
}