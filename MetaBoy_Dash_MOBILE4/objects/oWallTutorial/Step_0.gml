/// @description Insert description here
// You can write your code in this editor
if(global.pause == 0)
{
	if(wall_dead == 0)
	{
	global.hsp_oWall = -global.roomspeed;
	x = x + global.hsp_oWall;
	}

	if (x < -1000)
	{instance_destroy();}

	if(wall_dead == 1)
	{
		x = x + hsp;
		y = y + vsp;
		vsp = vsp + grv;
		image_angle = image_angle + 6;
	}

	if(wall_dead == 1 && x > 2100){instance_destroy();}

	if(wallflash == 0 && global.wallflash > 0)
	{wallflash = global.wallflash;}

	if(wallbreak == 1)
	{
		if(wallflash == 16){audio_play_sound(SoundLaserHit,10,false,1.2);}
		if(wallflash == 0){instance_destroy();}
	}
}