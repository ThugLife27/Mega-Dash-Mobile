/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();
augments_owned = 0;
all_owned = 0;

for(var i = 0; i < array_length(global.PlayerProfile.UnredeemedAugments); i+=1)
	{
		if(global.PlayerProfile.UnredeemedAugments[i] == asset)
		{augments_owned++;}
	}

if(augments_owned > 0 && global.AutoSaving == 0 && global.GuestMode == 0)
{image_index = 0;}
else
{image_index = 1;}

switch(asset)
{
	case "Common":
		if(array_length(global.PlayerProfile.EquippedCommons) + array_length(global.PlayerProfile.CommonAugments) >= 52)
		{
			all_owned = 1;
			image_alpha = 0;
		}
	break;
	
	case "Rare":
		if(array_length(global.PlayerProfile.EquippedRares) + array_length(global.PlayerProfile.RareAugments) >= 40)
		{
			all_owned = 1;
			image_alpha = 0;
		}
	break;
	
	case "Legendary":
		if(array_length(global.PlayerProfile.EquippedLegendary) + array_length(global.PlayerProfile.LegendaryAugments) >= 10)
		{
			all_owned = 1;
			image_alpha = 0;
		}
	break;
}
	
