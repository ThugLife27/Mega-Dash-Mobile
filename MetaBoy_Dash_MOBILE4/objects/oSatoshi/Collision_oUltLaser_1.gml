/// @description Insert description here
// You can write your code in this editor

if(x <= 1825 && satoshi_battle_start == 1 && satoshi_dead == 0)
{
hp = hp - 18;
flash = 28;
audio_play_sound(SoundLaserHit,10,false);
instance_create_layer(x+75,y-250,"Screens",oScoreBonus,{image_index : 4});
global.UltScore = global.UltScore + 500;
global.scorebonus = global.scorebonus + 500;
}

if(hp <= 0)
{satoshi_dead = 1;}




