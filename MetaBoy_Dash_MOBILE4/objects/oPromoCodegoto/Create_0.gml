/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

if(global.GuestMode == 1 || global.AutoSaving == 1)
{image_alpha = 0;}

adjustment = 0;
unique_bosses = 0;

for(var i = 0; i < 6; i+=1)
{
	if(global.PlayerProfile.Stats.UniqueBossesDefeated[i] == 1)
	{unique_bosses++;}
}

