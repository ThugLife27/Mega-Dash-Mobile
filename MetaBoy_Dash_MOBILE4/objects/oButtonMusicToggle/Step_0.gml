/// @description Insert description here
// You can write your code in this editor

if(variable_global_exists("music_on"))
{image_index = global.music_on;}

if (ready_check == 1)
{
	delay_timer--;
	if (delay_timer == 0)
	{
		if (global.music_on = 1)
		{
			audio_stop_sound(StartMusic);
			global.music_on = 0;
			image_index = 0;
		}
		else 
		{
			audio_play_sound(StartMusic,10,true,.4);
			global.music_on = 1;
			image_index = 1;
		}
		
		ready_check = 0;
		delay_timer = 10;
	}
}