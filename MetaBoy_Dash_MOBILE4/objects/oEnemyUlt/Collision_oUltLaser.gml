/// @description Insert description here
// You can write your code in this editor

if(enemy_dead == 0 && x < 1875)
{
enemy_dead = 1;
flash = 32;
audio_play_sound(SoundLaserHit,10,false,1.2);
instance_create_layer(x+75,y-50,"Screens",oScoreBonus,{points : 200 + 100*global.AUG_UltPointsUp});
global.UltScore = global.UltScore + 200 + 100*global.AUG_UltPointsUp;
global.scorebonus = global.scorebonus + 200 + 100*global.AUG_UltPointsUp;
}



