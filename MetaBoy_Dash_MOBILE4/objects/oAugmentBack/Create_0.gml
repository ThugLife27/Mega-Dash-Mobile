/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

	if(global.GuestMode == 0 && global.AutoSaving == 0)
	{
		uniqueName = "MegaDash";
		GooglePlayServices_SavedGames_Open(uniqueName);
		oLoadingCircle.image_alpha = 1;
		image_alpha = 0;
	}
	else
	{
		image_alpha = 1;	
		oLoadingCircle.image_alpha = 0;
	}


