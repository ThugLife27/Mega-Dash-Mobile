/// @description Insert description here
// You can write your code in this editor

if(x <= 1825 && satoshi_battle_start == 1 && satoshi_dead == 0)
{
hp = hp - 4;
flash = 14;
audio_play_sound(SoundLaserHit,10,false);
}

if(hp <= 0)
{satoshi_dead = 1;}




