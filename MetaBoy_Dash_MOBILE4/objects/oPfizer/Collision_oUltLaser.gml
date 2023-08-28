/// @description Insert description here
// You can write your code in this editor

if(x <= 1900)
{
hp = hp - 18;
flash = 28;
audio_play_sound(SoundLaserHit,10,false);
instance_create_layer(x+75,y-50,"Screens",oScoreBonus,{points : 200 + 100*global.AUG_UltPointsUp});
global.UltScore = global.UltScore + 200 + 100*global.AUG_UltPointsUp;
global.scorebonus = global.scorebonus + 200 + 100*global.AUG_UltPointsUp;
}

if(hp <= 0)
{boss_dead = 1;}


