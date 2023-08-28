/// @description Insert description here
// You can write your code in this editor

if(image_xscale < 1 && image_alpha == 1 && image_index == 0 && sprite_index = sRedeemButton)
{
	audio_play_sound(StartMenuSelect,10,false);
	ready_check = 1;	
	image_xscale = 1;
	image_yscale = 1;
	
	selected = 1;
	sprite_index = sLoadingCircle;
	with(oRedeemButton2)
	{
		if(selected == 0)
		{image_alpha = 0;}
	}
}