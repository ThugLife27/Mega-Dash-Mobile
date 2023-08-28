/// @description Insert description here
// You can write your code in this editor

if(enemy_dead == 0 && x < 1875)
{
enemy_dead = 1;
flash = 32;
instance_create_layer(x+75,y-50,"Screens",oScoreBonus,{image_index : 4});
global.UltScore = global.UltScore + 500;
global.scorebonus = global.scorebonus + 500;
}




