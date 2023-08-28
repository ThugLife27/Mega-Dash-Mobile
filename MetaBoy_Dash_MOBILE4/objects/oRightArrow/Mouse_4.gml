/// @description Insert description here
// You can write your code in this editor

flash = 21;
audio_play_sound(StartMenuSelect,10,false);
oLeaderBoardController2.LeaderboardShow++;
if(oLeaderBoardController2.LeaderboardShow > 2)
{oLeaderBoardController2.LeaderboardShow = 0;}
	
LootLockerInitialize("1aa8688bef047d6f9df9ade327da9cbc5eb9538f","0.1",true,oLeaderBoardController2.LeaderboardSet[oLeaderBoardController2.LeaderboardShow]);

oLeaderBoardController2.ShowTimer = 120;
oLeaderBoardController2.Page = 0;