/// @description Insert description here
// You can write your code in this editor

if(oAugmentDisplayCurrent.AugmentIndex == -1 || oLoadingCircle.image_alpha == 1)
{image_alpha = 0;}
else{image_alpha = 1;}

if (ready_check == 1)
{
	delay_timer--;
	if (delay_timer == 0)
	{
		switch(global.AugmentTier)
		{
			case "Common":
			array_push(global.PlayerProfile.CommonAugments,oAugmentDisplayCurrent.Augment);
			global.PlayerProfile.EquippedCommons[global.AugmentSlot] = "";
			break;
	
			case "Rare":
			array_push(global.PlayerProfile.RareAugments,oAugmentDisplayCurrent.Augment);
			global.PlayerProfile.EquippedRares[global.AugmentSlot] = "";
			break;
	
			case "Legendary":
			array_push(global.PlayerProfile.LegendaryAugments,oAugmentDisplayCurrent.Augment);
			global.PlayerProfile.EquippedLegendary[global.AugmentSlot] = "";
			break;
		}
		
		oAugmentDisplayCurrent.Update = 1;
		oAugmentController2.Update = 1;
		delay_timer = 10;
		ready_check = 0;
	}


}