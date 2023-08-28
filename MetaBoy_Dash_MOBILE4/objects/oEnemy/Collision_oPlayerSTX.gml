/// @description Insert description here
// You can write your code in this editor
if (enemy_dead == 0 && global.UltimateActive == 0 && global.GhostActive == 0 && global.uNimbleFighter == 0 && global.player_revive_mode == 0 && global.difficulty > 0 && global.AUG_EnemyPassthru == 0 && global.NinjaActive == 0 && instance_exists(oPlayerOvershield))
{
	oPlayerOvershield.damaged = 1;
	oPlayerOvershield.flash = 20;
	enemy_dead = 1;
	lasered = 1;
	flash = 20;
	audio_play_sound(SoundOvershieldBurst,10,false,.7);
}
else if (enemy_dead == 0 && global.UltimateActive == 0 && global.GhostActive == 0 && global.uNimbleFighter == 0 && global.player_revive_mode == 0 && global.difficulty > 0 && global.AUG_EnemyPassthru == 0 && global.NinjaActive == 0)
{
	global.player_death = 1;
}