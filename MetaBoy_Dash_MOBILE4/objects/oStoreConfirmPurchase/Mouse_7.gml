/// @description Insert description here
// You can write your code in this editor

if(image_xscale < 1 && image_alpha == 1 && sprite_index == sStoreConfirmPurchase)
{
	audio_play_sound(StartMenuSelect,10,false);
	ready_check = 1;	
	image_xscale = 1;
	image_yscale = 1;
	
	sprite_index = sLoadingCircle;
	oButtonHomePage.locked = 1;
	oButtonBattlePassBuy.locked = 1;
	oButtonCoinsBuy.locked = 1;
	oStoreCharacters.image_alpha = 0;
	oStoreLevels.image_alpha = 0;
	oStoreAugments.image_alpha = 0;
	oStoreBuyButton.image_alpha = 0;
		
	if(instance_exists(oAugmentRedeemGoto))
	{instance_destroy(oAugmentRedeemGoto);}
}