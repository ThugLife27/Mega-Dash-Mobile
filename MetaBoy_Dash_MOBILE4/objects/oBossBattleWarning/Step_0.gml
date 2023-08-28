/// @description Insert description here
// You can write your code in this editor

Timer--;

if(Timer == 0)
{
	instance_create_layer(2500,550,"Boss",global.BossSelect);
	audio_play_sound(SoundBossMusic,10,true,.6);
	instance_destroy();
}




