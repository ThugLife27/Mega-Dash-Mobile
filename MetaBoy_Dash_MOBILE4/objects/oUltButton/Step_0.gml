/// @description Insert description here
// You can write your code in this editor
if(global.uUltimate == 1 && global.UltimateCounter >= 1 && global.gamestart == 1 && global.UltimateComplete == 0 && global.UltimateActive == 0)
{image_index = 1;}
else
{image_index = 0;}

if(instance_exists(oPlayer))
{oPlayer.key_ult = MultiTouchCheckPressed();}