/// @description Insert description here
// You can write your code in this editor

if (ready_check == 1)
{
	delay_timer--;
	if (delay_timer == 0)
	{
		global.difficulty = 1;
		global.Active_Leaderboard = 13905;
		LootLockerInitialize("1aa8688bef047d6f9df9ade327da9cbc5eb9538f","0.1", true, global.Active_Leaderboard);
		LootLockerSetPlayerName(global.Player_Name);	
		ResetUpgrades();
		room_goto(ChooseMeta);
	}
}