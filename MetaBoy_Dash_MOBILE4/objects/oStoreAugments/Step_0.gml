/// @description Insert description here
// You can write your code in this editor

if (ready_check == 1)
{
	delay_timer--;
	if (delay_timer == 0)
	{
		image_index = 1;	
		oStoreCharacters.image_index = 0;
		oStoreLevels.image_index = 0;
		oStoreController.ArraySelect = oStoreController.AugmentArray;
		oStoreController.CostArraySelect = oStoreController.AugmentCost;
		oStoreController.SpriteArraySelect = oStoreController.AugmentSprite;
		oStoreController.Update = 1;
		oStoreController.Info = 0;
		oStoreController.Purchase = 0;
		oStoreController.Page = 0;
		
		delay_timer = 10;
		ready_check = 0;
	}
}