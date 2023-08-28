/// @description Insert description here
// You can write your code in this editor

if(image_xscale < 1)
{
	image_xscale = 1;
	image_yscale = 1;
	if(image_index == 0)
	{
		audio_play_sound(StartMenuSelect,10,false);
		oLevelSelectController.array_index--;
		oLevelSelectController.switch_map = 1;
	}
}