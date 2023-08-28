/// @description Insert description here
// You can write your code in this editor

if (ready_check == 1)
{
	delay_timer--;
	if (delay_timer == 0)
	{
		global.round_number++;

		if(global.difficulty > 0)
		{
			if(global.AUG_Loaded == 1){room_goto(DashRoom);}
			else if(global.round_number <= 3){room_goto(ChooseMeta)};
			else{room_goto(ChooseRandom);}
		}
		else
		{room_goto(DashRoom);}
	}
}