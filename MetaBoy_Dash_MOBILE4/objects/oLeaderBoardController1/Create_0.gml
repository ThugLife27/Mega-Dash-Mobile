/// @description Insert description here
// You can write your code in this editor
global.PlayerProfile.Stats.NumGames++;

if(global.uBonusRound == 0){global.RoundAll_Score = global.Round1_Score + global.Round2_Score + global.Round3_Score;}
else{global.RoundAll_Score = max(global.Round1_Score + global.Round2_Score + global.Round3_Score,global.Round1_Score + global.Round2_Score + global.Round4_Score,global.Round2_Score + global.Round3_Score + global.Round4_Score,global.Round1_Score + global.Round3_Score + global.Round4_Score);}

//LootLockerInitialize("1aa8688bef047d6f9df9ade327da9cbc5eb9538f","0.1", true, global.Active_Leaderboard);
LootLockerSetPlayerName(global.Player_Name);

string_cart = [];
string_cart[0] = GetFighterNumber();

if(global.difficulty > 0)
{
	for(i = 1; i < min(array_length(global.UpgradeChoiceArray)+1,5); i+=1)
	{
		if(global.UpgradeChoiceArray[i-1] < 10)
		{string_cart[i] = "0" + string(global.UpgradeChoiceArray[i-1]);}
		else{string_cart[i] = string(global.UpgradeChoiceArray[i-1]);}
	}

	if(array_length(global.UpgradeChoiceArray) <= 3) {string_cart[4] = string(99);}
}
else
{
	for(i = 1; i < 5; i+=1)
	{
		string_cart[i] = "99";
	}
}

for(i = 5; i < 9; i+=1)
{
	if(global.PlayerProfile.EquippedCommons[i-5] != "")
	{
		string_cart[i] = string(GetAugmentImageIndex(global.PlayerProfile.EquippedCommons[i-5]));
		if(string_length(string_cart[i]) == 1)
		{string_cart[i] = "0" + string_cart[i];}
	}
	else{string_cart[i] = "99";}
}

for(i = 9; i < 12; i+=1)
{
	if(global.PlayerProfile.EquippedRares[i-9] != "")
	{
		string_cart[i] = string(GetAugmentImageIndex(global.PlayerProfile.EquippedRares[i-9]));
		if(string_length(string_cart[i]) == 1)
		{string_cart[i] = "0" + string_cart[i];}
	}
	else{string_cart[i] = "99";}
}

for(i = 12; i < 13; i+=1)
{
	if(global.PlayerProfile.EquippedLegendary[i-12] != "")
	{
		string_cart[i] = string(GetAugmentImageIndex(global.PlayerProfile.EquippedLegendary[i-12]));
		if(string_length(string_cart[i]) == 1)
		{string_cart[i] = "0" + string_cart[i];}
	}
	else{string_cart[i] = "99";}
}

score_string = string(global.RoundAll_Score);

string_cart[13] = string_char_at(score_string,3);
string_cart[14] = string_cart[7];
string_cart[15] = string_char_at(score_string,2);

metadata_string = "";

for(i = 15; i > -1; i-=1)
{metadata_string = metadata_string + string_cart[i];}

if(oBrowserScaling.SecTrip == 0 && global.GuestMode == 0)
{LootLockerSubmitScoreMetadata(string(global.Active_Leaderboard),score_string,metadata_string);}

//password = CreatePassword();

//instance_create_layer(30,660,"Instances",oEndGameScoreBox);

sprite = sFighterRun;

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
		case 3:
		round_score = global.Round3_Score;
		break;
		
		case 4:
		round_score = global.Round4_Score;
		break;
	}
	
	switch(global.PlayerProfile.BattlePass)
	{
		case 0:
		xp_gained = round((round_score/600)+(round_score/600)*.1*global.BossBattleComplete);
		earn_rate = 1;
		break;
		
		case 1:
		xp_gained = round((round_score/300)+(round_score/300)*.1*global.BossBattleComplete);
		earn_rate = 2;
		break;

		case 2:
		xp_gained = round((round_score/200)+(round_score/200)*.1*global.BossBattleComplete);
		earn_rate = 3;
		break;
		
		case 3:
		xp_gained = round((round_score/120)+(round_score/120)*.1*global.BossBattleComplete);
		earn_rate = 5;
		break;
	}

global.AutoSaving = 1;
global.PlayerProfile.BattlePassXP = min(99999,global.PlayerProfile.BattlePassXP + xp_gained);
GooglePlayServices_IsAuthenticated();
}
