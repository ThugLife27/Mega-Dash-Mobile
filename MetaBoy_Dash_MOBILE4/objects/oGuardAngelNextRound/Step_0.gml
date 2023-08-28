/// @description Insert description here
// You can write your code in this editor
if (ready_check = 1)
{
	delay_timer--;
	if (delay_timer == 0)
	{
		switch (global.round_number)
			{
			case 1:
			global.Round1_Score = global.scoretotal;
			oBrowserScaling.R1Score = global.scoretotal;
			room_goto(EndRound);
			break
			
			case 2:
			global.Round2_Score = global.scoretotal;
			oBrowserScaling.R2Score = global.scoretotal;
			room_goto(EndRound);
			break
			
			case 3:
			global.Round3_Score = global.scoretotal;
			oBrowserScaling.R3Score = global.scoretotal;
			if(global.uBonusRound == 0)
			{
			global.RoundAll_Score = global.Round1_Score + global.Round2_Score + global.Round3_Score;
			//NextRoom = CheckforUnlocks();
			room_goto(EndGame)};
			else{room_goto(EndRound);}
			break
			
			case 4:
			global.Round4_Score = global.scoretotal;
			oBrowserScaling.R4Score = global.scoretotal;
			global.RoundAll_Score = max(global.Round1_Score + global.Round2_Score + global.Round3_Score,global.Round1_Score + global.Round2_Score + global.Round4_Score,global.Round2_Score + global.Round3_Score + global.Round4_Score,global.Round1_Score + global.Round3_Score + global.Round4_Score);
			//NextRoom = CheckforUnlocks();
			room_goto(EndGame);
			}
	}
}