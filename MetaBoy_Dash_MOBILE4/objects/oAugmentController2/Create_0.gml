/// @description Insert description here
// You can write your code in this editor

Update = 1;
Page = 0;

switch(global.AugmentTier)
{
	case "Common":
	Inventory = global.PlayerProfile.CommonAugments;
	break;
	
	case "Rare":
	Inventory = global.PlayerProfile.RareAugments;
	break;
	
	case "Legendary":
	Inventory = global.PlayerProfile.LegendaryAugments;
	break;
}