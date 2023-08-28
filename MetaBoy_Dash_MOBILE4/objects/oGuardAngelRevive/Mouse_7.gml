/// @description Insert description here
// You can write your code in this editor

if(image_xscale < 1 && image_alpha == 1 && oGuardAngelNextRound.ready_check == 0)
{
	audio_play_sound(StartMenuSelect,10,false);
	ready_check = 1;	
	image_xscale = 1;
	image_yscale = 1;
}