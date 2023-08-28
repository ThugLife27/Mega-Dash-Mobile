/// @description Insert description here
// You can write your code in this editor
if(image_xscale < 1 && image_alpha == 1 && sprite_index = sBattlePassClaim)
{
	audio_play_sound(StartMenuSelect,10,false);
	ready_check = 1;	
	image_xscale = 1;
	image_yscale = 1;
	
	oButtonHomePage.locked = 1;
	oButtonCoinsBuy.image_alpha = 0;
	oButtonBattlePassBuy.image_alpha = 0;
	
	selected = 1;
	sprite_index = sLoadingCircle;
	with(oBattlePassClaimButton)
	{
		if(selected == 0)
		{image_alpha = 0;}
	}
}