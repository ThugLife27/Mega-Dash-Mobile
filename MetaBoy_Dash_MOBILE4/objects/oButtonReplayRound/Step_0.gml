/// @description Insert description here
// You can write your code in this editor

if (ready_check == 1)
{
	delay_timer--;
	if (delay_timer == 0)
	{
		if(AdMob_RewardedVideo_IsLoaded())
		{
			audio_play_sound(StartMenuSelect,10,false);
			AdMob_RewardedVideo_Show();
		}
		else
		{
			AdMob_RewardedVideo_Load();
			ready_check = 0;
		}
	}
}