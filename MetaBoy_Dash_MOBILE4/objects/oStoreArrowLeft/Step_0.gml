/// @description Insert description here
// You can write your code in this editor
if (ready_check == 1)
{
	delay_timer--;
	if (delay_timer == 0)
	{
		oStoreController.Update = 1;
		oStoreController.Page--;
		oStoreController.Info = 0;
		oStoreController.Purchase = 0;
		
		delay_timer = 10;
		ready_check = 0;
	}
}

if(oStoreController.Page = 0)
{image_index = 1;}
else
{image_index = 0;}