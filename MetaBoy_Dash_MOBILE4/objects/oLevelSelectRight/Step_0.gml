/// @description Insert description here
// You can write your code in this editor

if(instance_exists(oLevelSelectController))
{
	if(oLevelSelectController.array_index == (array_length(global.PlayerProfile.Levels)-1))
	{image_index = 1;}
	else
	{image_index = 0;}
}