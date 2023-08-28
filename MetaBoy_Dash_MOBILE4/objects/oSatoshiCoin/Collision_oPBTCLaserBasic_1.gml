/// @description Insert description here
// You can write your code in this editor
flash = 16;
audio_play_sound(SoundLaserHit,10,false);

with(other){instance_destroy();}

hp--;

if(hp <= 0)
{coin_dead = 1;}


