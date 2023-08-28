/// @description Insert description here
// You can write your code in this editor
flash = 16;
audio_play_sound(SoundLaserHit,10,false);

hp = hp - 3;

if(hp <= 0)
{coin_dead = 1;}

if(coin_dead == 0)
{with(other){instance_destroy();}}



