/// @description Insert description here
// You can write your code in this editor
switch(async_load[? "type"])
{

case "GooglePlayServices_IsAuthenticated":
	if(!async_load[?"success"])
	{
		image_alpha = 0;
		reason = 1;
		oButtonHomePage.locked = 0;
		oButtonBattlePassBuy.locked = 0;
		oButtonCoinsBuy.locked = 0;
		oStoreCharacters.image_alpha = 1;
		oStoreLevels.image_alpha = 1;
		oStoreAugments.image_alpha = 1;
		oStoreBuyButton.image_alpha = 1;
	}
	else if(async_load[?"isAuthenticated"])
	{
		global.PlayerProfile.Coins = global.PlayerProfile.Coins - cost;
			
		if(oStoreController.ArraySelect == oStoreController.CharacterArray)
		{array_push(global.PlayerProfile.Characters,asset);}
		else if(oStoreController.ArraySelect == oStoreController.LevelArray)
		{array_push(global.PlayerProfile.Levels,asset);}
		else if(oStoreController.ArraySelect == oStoreController.AugmentArray)
		{array_push(global.PlayerProfile.UnredeemedAugments,asset);}		
			
		GooglePlayServices_SavedGames_Load(true);
	}
	else
	{
		image_alpha = 0;
		reason = 1;
		oButtonHomePage.locked = 0;
		oButtonBattlePassBuy.locked = 0;
		oButtonCoinsBuy.locked = 0;
		oStoreCharacters.image_alpha = 1;
		oStoreLevels.image_alpha = 1;
		oStoreAugments.image_alpha = 1;
		oStoreBuyButton.image_alpha = 1;
	}
			
break;

case "GooglePlayServices_SavedGames_Load":
		
	if(!async_load[?"success"])
	{
		global.PlayerProfile.Coins = global.PlayerProfile.Coins + cost;
				
		if(oStoreController.ArraySelect == oStoreController.CharacterArray)
		{
			for(var i = 0; i < array_length(global.PlayerProfile.Characters); i += 1)
			{
				if(global.PlayerProfile.Characters[i] == asset)
				{
					array_delete(global.PlayerProfile.Characters,i,1);
					break
				}
			}
		}
				
		else if(oStoreController.ArraySelect == oStoreController.LevelArray)
		{
			for(var i = 0; i < array_length(global.PlayerProfile.Levels); i += 1)
			{
				if(global.PlayerProfile.Levels[i] == asset)
				{
					array_delete(global.PlayerProfile.Levels,i,1);
					break
				}
			}
		}
			
		else if(oStoreController.ArraySelect == oStoreController.AugmentArray)
		{
			for(var i = 0; i < array_length(global.PlayerProfile.UnredeemedAugments); i += 1)
			{
				if(global.PlayerProfile.UnredeemedAugments[i] == asset)
				{
					array_delete(global.PlayerProfile.UnredeemedAugments,i,1);
					break
				}
			}
		}
			image_alpha = 0;
			reason = 2;
			oButtonHomePage.locked = 0;
			oButtonBattlePassBuy.locked = 0;
			oButtonCoinsBuy.locked = 0;
			oStoreCharacters.image_alpha = 1;
			oStoreLevels.image_alpha = 1;
			oStoreAugments.image_alpha = 1;
			oStoreBuyButton.image_alpha = 1;
		}	
		//If no Player ID data found, create save profile!
	else if(async_load[?"snapshots"] == "[]")
	{	
		var path = "save_thumbnail.png"
		sprite_save_w(sFighterRun, 0, path);
		var data = global.PlayerProfile;
		var jsonData = json_stringify(data);
		var uniqueName = "MegaDash";
		var description = "MegaDashSaveFile";
		GooglePlayServices_SavedGames_CommitNew(uniqueName,description,jsonData,path);
	}
	else
	{
		var uniqueName = "MegaDash";
		GooglePlayServices_SavedGames_Open(uniqueName);
	}
		
break;

case "GooglePlayServices_SavedGames_Open":
		
	if(!async_load[?"success"])
	{
		global.PlayerProfile.Coins = global.PlayerProfile.Coins + cost;
				
		if(oStoreController.ArraySelect == oStoreController.CharacterArray)
		{
			for(var i = 0; i < array_length(global.PlayerProfile.Characters); i += 1)
			{
				if(global.PlayerProfile.Characters[i] == asset)
				{
					array_delete(global.PlayerProfile.Characters,i,1);
					break
				}
			}
		}
				
		else if(oStoreController.ArraySelect == oStoreController.LevelArray)
		{
			for(var i = 0; i < array_length(global.PlayerProfile.Levels); i += 1)
			{
				if(global.PlayerProfile.Levels[i] == asset)
				{
					array_delete(global.PlayerProfile.Levels,i,1);
					break
				}
			}
		}
		
		else if(oStoreController.ArraySelect == oStoreController.AugmentArray)
		{
			for(var i = 0; i < array_length(global.PlayerProfile.UnredeemedAugments); i += 1)
			{
				if(global.PlayerProfile.UnredeemedAugments[i] == asset)
				{
					array_delete(global.PlayerProfile.UnredeemedAugments,i,1);
					break
				}
			}
		}
		image_alpha = 0;
		reason = 2;
		oButtonHomePage.locked = 0;
		oButtonBattlePassBuy.locked = 0;
		oButtonCoinsBuy.locked = 0;
		oStoreCharacters.image_alpha = 1;
		oStoreLevels.image_alpha = 1;
		oStoreAugments.image_alpha = 1;
		oStoreBuyButton.image_alpha = 1;
	}
	else
	{
		var path = "save_thumbnail.png"
		sprite_save_w(sFighterRun, 0, path);
		var data = global.PlayerProfile;
		var jsonData = json_stringify(data);
		var uniqueName = "MegaDash";
		var description = "MegaDashSaveFile";
		GooglePlayServices_SavedGames_CommitAndClose(uniqueName,description,jsonData,path);
	}	
break;

case "GooglePlayServices_SavedGames_CommitAndClose":

    if(!async_load[? "success"])
	{
		global.PlayerProfile.Coins = global.PlayerProfile.Coins + cost;
				
		if(oStoreController.ArraySelect == oStoreController.CharacterArray)
		{
			for(var i = 0; i < array_length(global.PlayerProfile.Characters); i += 1)
			{
				if(global.PlayerProfile.Characters[i] == asset)
				{
					array_delete(global.PlayerProfile.Characters,i,1);
					break
				}
			}
		}
				
		else if(oStoreController.ArraySelect == oStoreController.LevelArray)
		{
			for(var i = 0; i < array_length(global.PlayerProfile.Levels); i += 1)
			{
				if(global.PlayerProfile.Levels[i] == asset)
				{
					array_delete(global.PlayerProfile.Levels,i,1);
					break
				}
			}
		}
		
		else if(oStoreController.ArraySelect == oStoreController.AugmentArray)
		{
			for(var i = 0; i < array_length(global.PlayerProfile.UnredeemedAugments); i += 1)
			{
				if(global.PlayerProfile.UnredeemedAugments[i] == asset)
				{
					array_delete(global.PlayerProfile.UnredeemedAugments,i,1);
					break
				}
			}
		}
		image_alpha = 0;
		reason = 2;
		oButtonHomePage.locked = 0;
		oButtonBattlePassBuy.locked = 0;
		oButtonCoinsBuy.locked = 0;
		oStoreCharacters.image_alpha = 1;
		oStoreLevels.image_alpha = 1;
		oStoreAugments.image_alpha = 1;
		oStoreBuyButton.image_alpha = 1;
	}
	else
	{
		image_alpha = 0;
		audio_play_sound(SoundReward2,10,false);
		reason = 4;
		oButtonHomePage.locked = 0;
		oButtonBattlePassBuy.locked = 0;
		oButtonCoinsBuy.locked = 0;
		oStoreCharacters.image_alpha = 1;
		oStoreLevels.image_alpha = 1;
		oStoreAugments.image_alpha = 1;
		oStoreBuyButton.image_alpha = 1;
		oStoreBuyButton.augments_owned++;
	}

break

case "GooglePlayServices_SavedGames_CommitNew":
    
	    if(!async_load[? "success"])
	{
		global.PlayerProfile.Coins = global.PlayerProfile.Coins + cost;
				
		if(oStoreController.ArraySelect == oStoreController.CharacterArray)
		{
			for(var i = 0; i < array_length(global.PlayerProfile.Characters); i += 1)
			{
				if(global.PlayerProfile.Characters[i] == asset)
				{
					array_delete(global.PlayerProfile.Characters,i,1);
					break
				}
			}
		}
				
		else if(oStoreController.ArraySelect == oStoreController.LevelArray)
		{
			for(var i = 0; i < array_length(global.PlayerProfile.Levels); i += 1)
			{
				if(global.PlayerProfile.Levels[i] == asset)
				{
					array_delete(global.PlayerProfile.Levels,i,1);
					break
				}
			}
		}
		
		else if(oStoreController.ArraySelect == oStoreController.AugmentArray)
		{
			for(var i = 0; i < array_length(global.PlayerProfile.UnredeemedAugments); i += 1)
			{
				if(global.PlayerProfile.UnredeemedAugments[i] == asset)
				{
					array_delete(global.PlayerProfile.UnredeemedAugments,i,1);
					break
				}
			}
		}
		image_alpha = 0;
		reason = 2;
		oButtonHomePage.locked = 0;
		oButtonBattlePassBuy.locked = 0;
		oButtonCoinsBuy.locked = 0;
		oStoreCharacters.image_alpha = 1;
		oStoreLevels.image_alpha = 1;
		oStoreAugments.image_alpha = 1;
		oStoreBuyButton.image_alpha = 1;
	}
	else
	{
		image_alpha = 0;
		audio_play_sound(SoundReward2,10,false);
		reason = 4;
		oButtonHomePage.locked = 0;
		oButtonBattlePassBuy.locked = 0;
		oButtonCoinsBuy.locked = 0;
		oStoreCharacters.image_alpha = 1;
		oStoreLevels.image_alpha = 1;
		oStoreAugments.image_alpha = 1;
		oStoreBuyButton.image_alpha = 1;
		oStoreBuyButton.augments_owned++;
	}
break;
}