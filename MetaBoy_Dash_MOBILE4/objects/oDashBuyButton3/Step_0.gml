/// @description Insert description here
// You can write your code in this editor
switch(global.PlayerProfile.BattlePass)
{
	case 0:
		cost = 1500;
	break
	
	case 1:
		cost = 1000;
	break
	
	case 2:
		cost = 700;
	break
}

if(sprite_index == sMB_BuywithCoins)
{
	if(global.PlayerProfile.BattlePass >= 3)
	{image_index = 2;}
	else if(global.PlayerProfile.Coins < cost || global.AutoSaving == 1 || global.GuestMode == 1)
	{image_index = 1;}
	else
	{image_index = 0;}
}

