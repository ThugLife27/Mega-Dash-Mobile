/// @description Insert description here
// You can write your code in this editor

if(y > -200)
{
	if(SoundPlayed == 0)
	{
		audio_play_sound(SoundPlayerEntrance1,10,false,.5);
		SoundPlayed = 1;
	}
	
	if (place_meeting(x,y+vsp,oWall))
	{
		while(!place_meeting(x,y+sign(vsp),oWall))
		{
			y = y + sign(vsp);
		}
		FloorCheck = 1;
		vsp = 0;
	}
}

y = y + vsp;

if(FloorCheck == 1 && image_index == 0)
{
	image_speed = 1;
}

if(floor(image_index) == 3 && !audio_is_playing(SoundPlayerEntrance2))
{
	audio_play_sound(SoundPlayerEntrance2,10,false,.5);
	instance_create_layer(x,y-64,"Player",global.Character);
}
	