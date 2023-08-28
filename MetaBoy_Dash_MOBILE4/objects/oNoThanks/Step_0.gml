/// @description Insert description here
// You can write your code in this editor

if (ready_check == 1)
{
	delay_timer--;
	if (delay_timer == 0)
	{
		if(global.difficulty != 0)
		{room_goto(ChooseMeta);}
		else
		{room_goto(DashRoom);}
	}
}