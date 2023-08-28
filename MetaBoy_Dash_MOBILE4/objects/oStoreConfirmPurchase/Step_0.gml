/// @description Insert description here
// You can write your code in this editor

if (ready_check == 1)
{
	delay_timer--;
	if (delay_timer == 0)
	{
		GooglePlayServices_IsAuthenticated();

		delay_timer = 10;
		ready_check = 0;
	}
}

if(image_alpha == 0 && oStoreController.ArraySelect == oStoreController.AugmentArray && reason == 4 && sprite_index == sLoadingCircle)
{
	success_timer--;
	if(success_timer == 0)
	{
		sprite_index = sStoreConfirmPurchase;
		if(global.PlayerProfile.Coins >= cost)
		{
		image_index = 1;
		image_alpha = 1;
		}
		else{image_alpha = 0;}
			
		instance_create_layer(x,y+245,"Instances2",oAugmentRedeemGoto);
		success_timer = 60;
	}
}