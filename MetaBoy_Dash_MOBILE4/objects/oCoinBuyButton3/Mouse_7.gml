/// @description Insert description here
// You can write your code in this editor

if(image_xscale < 1 && image_index == 1 && sprite_index == sCoinBuyButton)
{
	if (GPBilling_IsStoreConnected() == true)
	{
		audio_play_sound(StartMenuSelect,10,false);
		oButtonHomePage.locked = 1;
		oButtonBattlePassBuy.locked = 1;
		sprite_index = sLoadingCircle;
		oCoinBuyController.reason = 5;
		oCoinBuyController.button = object_index;
		var _chk = GPBilling_PurchaseProduct("md_003");
		if _chk != gpb_no_error
		{
			global.IAP_Enabled = false;
			oCoinBuyController.reason = 1;
			sprite_index = sCoinBuyButton;
			oButtonHomePage.locked = 0;
			oButtonBattlePassBuy.locked = 0;
		}
	}
	else
	{
		global.IAP_Enabled = false;
		oCoinBuyController.reason = 1;
		sprite_index = sCoinBuyButton;
		oButtonHomePage.locked = 0;
		oButtonBattlePassBuy.locked = 0;
	}
	
	image_xscale = 1;
	image_yscale = 1;
}