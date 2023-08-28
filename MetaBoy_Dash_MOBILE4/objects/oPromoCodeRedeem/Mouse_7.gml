/// @description Insert description here
// You can write your code in this editor

if(image_xscale < 1 && image_alpha == 1 && image_index == 1)
{
	audio_play_sound(StartMenuSelect,10,false);
	oPromoCodeBlinker.image_alpha = 0;
	oLoadingCircle.image_alpha = 1;
	image_alpha = 0;
	oPromoCodeExit.image_alpha = 0;
	oPromoCodePaste.image_alpha = 0;
	promocode = keyboard_string;
	promocode_reward = "";
	redeeming = 1;
	ready_check = 1;	
	image_xscale = 1;
	image_yscale = 1;
}