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
			oStoreController.Info = 1;
			oStoreController.Info_asset = asset;
			oStoreController.Info_cost = cost;
			oStoreController.Info_sprite = sprite;
		}
		else
		{
			oStoreController.Update = 1;
			oStoreController.Info = 0;
		}
		
		delay_timer = 10;
		ready_check = 0;
	}
}