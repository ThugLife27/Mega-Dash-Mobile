/// @description Insert description here
// You can write your code in this editor

if (ready_check == 1)
{
	delay_timer--;
	if (delay_timer == 0)
	{
		if(image_index == 0)
		{
			oStoreController.Update = 1;
			oStoreController.Info = 0;
			oStoreController.Purchase = 1;
			oStoreController.Buy_asset = asset;
			oStoreController.Buy_cost = cost;
			oStoreController.Buy_sprite = sprite;
		}
		
		else
		{
			oStoreController.Update = 1;
			oStoreController.Info = 0;
			oStoreController.Purchase = 0;
		}
		
		delay_timer = 10;
		ready_check = 0;
	}
}