/// @description Insert description here
// You can write your code in this editor

if(global.uTimeDistort == 1 && global.TimeDistortUsed == 0 && global.TimeDistortTimer >= (240) && global.gamestart == 1 && global.UltimateActive == 0)
{image_index = 1;}
else
{image_index = 0;}

if(instance_exists(oPlayer))
{oPlayer.key_timedistort = MultiTouchCheckPressed();}