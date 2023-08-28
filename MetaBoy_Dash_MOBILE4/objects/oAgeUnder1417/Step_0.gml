/// @description Insert description here
// You can write your code in this editor

if (ready_check == 1)
{
	delay_timer--;
	if (delay_timer == 0)
	{
		global.PlayerProfile.age = "14 - 17";
		room_goto(StartRoom1);
	}
}