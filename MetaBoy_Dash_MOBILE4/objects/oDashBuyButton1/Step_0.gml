/// @description Insert description here
// You can write your code in this editor
if(sprite_index == sMB_BuywithCoins)
{
	if(global.PlayerProfile.BattlePass >= 1)
	{image_index = 2;}
	else if(global.PlayerProfile.Coins < 500 || global.AutoSaving == 1 || global.GuestMode == 1)
	{image_index = 1;}
	else
	{image_index = 0;}
}

