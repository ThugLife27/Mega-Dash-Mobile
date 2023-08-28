/// @description Insert description here
// You can write your code in this editor

if (ready_check == 1)
{
	delay_timer--;
	if (delay_timer == 0)
	{
		global.Round1_Score = 0;
		global.Round2_Score = 0;
		global.Round3_Score = 0;
		global.Round4_Score = 0;
		global.round_number = 1;
		ResetLBSecurity();
		ResetUpgrades();

		if(global.difficulty > 0)
		{room_goto(ChooseMeta);}
		else
		{room_goto(DashRoom);}
	
	}
}