/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

array_select = oStoreController.CharacterArray;

if(oStoreController.Page*4+5 > array_length(array_select))
{image_index = 1;}
else
{image_index = 0;}

