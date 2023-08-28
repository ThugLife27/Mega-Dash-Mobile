/// @description Insert description here
// You can write your code in this editor

if(image_xscale < 1 && image_alpha == 1)
{
	audio_play_sound(StartMenuSelect,10,false);	
	image_xscale = 1;
	image_yscale = 1;
	global.PlayerProfile.Coins -= 500;
	if(global.PlayerProfile.Coins < 0)
	{global.PlayerProfile.Coins = 0;}	
}