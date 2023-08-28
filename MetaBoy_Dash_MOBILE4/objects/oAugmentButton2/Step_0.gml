/// @description Insert description here
// You can write your code in this editor
if (ready_check == 1)
{
	delay_timer--;
	if (delay_timer == 0)
	{
		temp_augment = Augment;
		
		switch(global.AugmentTier)
		{
			case "Common":
			global.PlayerProfile.CommonAugments[Slot] = global.PlayerProfile.EquippedCommons[global.AugmentSlot];
			global.PlayerProfile.EquippedCommons[global.AugmentSlot] = temp_augment;
			
			Augment = global.PlayerProfile.CommonAugments[Slot];
			if(Augment == "")
			{array_delete(global.PlayerProfile.CommonAugments,Slot,1);}
			break;
	
			case "Rare":
			global.PlayerProfile.RareAugments[Slot] = global.PlayerProfile.EquippedRares[global.AugmentSlot];
			global.PlayerProfile.EquippedRares[global.AugmentSlot] = temp_augment;
			
			Augment = global.PlayerProfile.RareAugments[Slot];
			if(Augment == "")
			{array_delete(global.PlayerProfile.RareAugments,Slot,1);}
			break;
	
			case "Legendary":
			global.PlayerProfile.LegendaryAugments[Slot] = global.PlayerProfile.EquippedLegendary[global.AugmentSlot];
			global.PlayerProfile.EquippedLegendary[global.AugmentSlot] = temp_augment;
			
			Augment = global.PlayerProfile.LegendaryAugments[Slot];
			if(Augment == "")
			{array_delete(global.PlayerProfile.LegendaryAugments,Slot,1);}
			break;
		}
			
		AugmentIndex = GetAugmentImageIndex(Augment);
		oAugmentDisplayCurrent.Update = 1;
		oAugmentController2.Update = 1;
		delay_timer = 10;
		ready_check = 0;
	}

}