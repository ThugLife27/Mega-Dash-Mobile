/// @description Insert description here
// You can write your code in this editor
sprite = global.CharacterRunSkin;
global.RoundAll_Score = global.Round1_Score + global.Round2_Score + global.Round3_Score;

if(global.difficulty == 0)
{difficulty = "CASUAL"}
else if(global.difficulty == 1)
{difficulty = "NORMAL"}
else
{difficulty = "HARDCORE"}

if(global.GuestMode == 0)
{
	switch(global.round_number)
	{
		case 1:
		round_score = global.Round1_Score;
		break;
		
		case 2:
		round_score = global.Round2_Score;
		break;
	
		case 3:
		round_score = global.Round3_Score;
		break;
	}
	
	switch(global.PlayerProfile.BattlePass)
	{
		case 0:
		xp_gained = round((round_score/600)+(round_score/600)*.1*global.BossBattleComplete+(round_score/600)*.1*global.difficulty+(round_score/600)*.1*global.AUG_BPXP1+(round_score/600)*.2*global.AUG_BPXP2);
		earn_rate = 1;
		break;
		
		case 1:
		xp_gained = round((round_score/300)+(round_score/300)*.1*global.BossBattleComplete+(round_score/300)*.1*global.difficulty+(round_score/300)*.1*global.AUG_BPXP1+(round_score/300)*.2*global.AUG_BPXP2);
		earn_rate = 2;
		break;

		case 2:
		xp_gained = round((round_score/200)+(round_score/200)*.1*global.BossBattleComplete+(round_score/200)*.1*global.difficulty+(round_score/200)*.1*global.AUG_BPXP1+(round_score/200)*.2*global.AUG_BPXP2);
		earn_rate = 3;
		break;
		
		case 3:
		xp_gained = round((round_score/120)+(round_score/120)*.1*global.BossBattleComplete+(round_score/120)*.1*global.difficulty+(round_score/120)*.1*global.AUG_BPXP1+(round_score/120)*.2*global.AUG_BPXP2);
		earn_rate = 5;
		break;
	}

global.AutoSaving = 1;
global.PlayerProfile.BattlePassXP = min(99999,global.PlayerProfile.BattlePassXP + xp_gained);
GooglePlayServices_IsAuthenticated();
}
