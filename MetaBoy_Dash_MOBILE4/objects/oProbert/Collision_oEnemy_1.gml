/// @description Insert description here
// You can write your code in this editor

if(other.enemy_dead == 1 && x <= 1825)
{
hp = hp - 60;
flash = 28;
audio_play_sound(SoundProbertDamage,10,false,2);
}

if(hp <= 0)
{probert_dead = 1;}




