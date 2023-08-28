/// @description Insert description here
// You can write your code in this editor
if(global.AutoSaving == 0)
{
switch(async_load[? "type"])
{
	case "GooglePlayServices_SavedGames_Open":
		image_alpha = 1;	
		oLoadingCircle.image_alpha = 0;
	break
	
	case "GooglePlayServices_SavedGames_CommitAndClose":
		room_goto(ChooseAugment);
	break
}
}
