/// @description Insert description here
// You can write your code in this editor
if (ready_check == 1)
{
	delay_timer--;
	if (delay_timer == 0)
	{
		if(global.GuestMode == 0 && global.AutoSaving == 0)
		{
		var path = "save_thumbnail.png"
		sprite_save_w(sFighterRun, 0, path);
		var data = global.PlayerProfile;
		var jsonData = json_stringify(data);
		var uniqueName = "MegaDash";
		var description = "MegaDashSaveFile";
		GooglePlayServices_SavedGames_CommitAndClose(uniqueName,description,jsonData,path);
		oAugmentClear.image_alpha = 0;
		oLoadingCircle.image_alpha = 1;
		}
		else
		{room_goto(ChooseAugment);}
	}
}