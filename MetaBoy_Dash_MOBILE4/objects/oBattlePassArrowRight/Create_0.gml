/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

array_select = oBattlePassController.BattlePassAssets;

if(oBattlePassController.Page*5+6 > array_length(array_select))
{image_index = 1;}
else
{image_index = 0;}

