/// @description Insert description here
// You can write your code in this editor
os_set_orientation_lock(true,false);

delay_timer = 10;
ready_check = 0;
flash = 0;

global.Active_Leaderboard = 13905;
LootLockerInitialize("1aa8688bef047d6f9df9ade327da9cbc5eb9538f","0.1", true, global.Active_Leaderboard);
LootLockerSetPlayerName(global.Player_Name);

//Init Scoring
global.Round1_Score = 0;
global.Round2_Score = 0;
global.Round3_Score = 0;
global.Round4_Score = 0;
global.RoundAll_Score = 0;
global.round_number = 1;
ResetLBSecurity();
ResetAugments();
ApplyAugments();
ResetUpgrades();



