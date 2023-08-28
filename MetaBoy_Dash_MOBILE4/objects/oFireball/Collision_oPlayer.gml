/// @description Insert description here
// You can write your code in this editor

if (global.GhostActive == 0 && global.NinjaActive == 0 && global.player_revive_mode == 0 && global.UltimateActive == 0 && instance_exists(oPlayerOvershield))
{
oPlayerOvershield.damaged = 1;
oPlayerOvershield.flash = 20;
audio_play_sound(SoundOvershieldBurst,10,false,.7);
instance_destroy();
}

else if (global.GhostActive == 0 && global.NinjaActive == 0 && global.player_revive_mode == 0 && global.UltimateActive == 0)
{
	global.player_death = 1;
}





