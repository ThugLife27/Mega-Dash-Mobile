/// @description Insert description here
// You can write your code in this editor

if(global.uGhost == 1 && global.GhostReadyTimer >= (7*60) && global.gamestart == 1 && global.UltimateActive == 0)
{image_index = 1;}
else
{image_index = 0;}

if(instance_exists(oPlayer))
{oPlayer.key_ghost = MultiTouchCheckPressed();}