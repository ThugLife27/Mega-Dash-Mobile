/// @description Insert description here
// You can write your code in this editor

if (global.dash_mode == 1 && oPlayer.hsp >= 0)
{
	audio_play_sound(SoundBigHit,10,false,.5);
	vsp = 0;
	hsp = 25;
	bounces = 0;
	image_speed = 4;
}

if ((global.dash_mode == 0 || oPlayer.hsp < 0) && global.GhostActive == 0 && global.player_revive_mode == 0 && global.UltimateActive == 0)
{
	global.player_death = 1;
}


