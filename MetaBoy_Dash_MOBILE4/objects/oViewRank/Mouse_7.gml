/// @description Insert description here
// You can write your code in this editor

if(image_xscale < 1 && image_alpha == 1)
{
	audio_play_sound(StartMenuSelect,10,false);
	
	if(rank == "CASUAL")
	{
		global.Active_Leaderboard = 13905;
		rank = "NORMAL";
	}
	else if(rank == "NORMAL")
	{
		global.Active_Leaderboard = 13763;
		rank = "HARDCORE";	
	}
	else if(rank == "HARDCORE")
	{
		global.Active_Leaderboard = 13907;
		rank = "CASUAL";	
	}
	
	LootLockerInitialize("1aa8688bef047d6f9df9ade327da9cbc5eb9538f","0.1", true, global.Active_Leaderboard);
	LootLockerSetPlayerName(global.Player_Name);
	image_xscale = 1;
	image_yscale = 1;
}