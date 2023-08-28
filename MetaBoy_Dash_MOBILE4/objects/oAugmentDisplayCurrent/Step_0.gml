/// @description Insert description here
// You can write your code in this editor

if(Update == 1)
{
	switch(global.AugmentTier)
	{
		case "Common":
		Augment = global.PlayerProfile.EquippedCommons[global.AugmentSlot];
		break;
	
		case "Rare":
		Augment = global.PlayerProfile.EquippedRares[global.AugmentSlot];
		break;
	
		case "Legendary":
		Augment = global.PlayerProfile.EquippedLegendary[global.AugmentSlot];
		break;
	}

	AugmentIndex = GetAugmentImageIndex(Augment);
	
	Update = 0;
}