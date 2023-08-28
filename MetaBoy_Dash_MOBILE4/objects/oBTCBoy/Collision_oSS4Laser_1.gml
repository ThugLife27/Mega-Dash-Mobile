/// @description Insert description here
// You can write your code in this editor

if(x <= 1825 && btcboy_dead == 0)
{
hp = hp - 4;
flash = 14;
audio_play_sound(SoundLaserHit,10,false);
}

if(hp <= 0)
{btcboy_dead = 1;deathflash = 180;}




