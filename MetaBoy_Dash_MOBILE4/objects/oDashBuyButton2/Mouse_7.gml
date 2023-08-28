/// @description Insert description here
// You can write your code in this editor

if(image_xscale < 1 && image_index == 0 && sprite_index == sMB_BuywithCoins && image_alpha == 1 && GooglePlayServices_IsAvailable())
{
	audio_play_sound(StartMenuSelect,10,false);
	sprite_index = sLoadingCircle;
	image_speed = 1;
	oDashBuyButton1.image_alpha = 0;
	oDashBuyButton3.image_alpha = 0;
	oButtonHomePage.locked = 1;
	oButtonCoinsBuy.locked = 1;
	oDashBuyController.reason = 3;
	battlepass_temp = global.PlayerProfile.BattlePass;
	GooglePlayServices_IsAuthenticated()

	image_xscale = 1;
	image_yscale = 1;
}