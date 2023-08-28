/// @description Insert description here
// You can write your code in this editor
if(sprite_index == sLoadingCircle)
{
	
switch(async_load[? "type"])
{

case "GooglePlayServices_IsAuthenticated":
	if(!async_load[?"success"])
	{
		image_alpha = 0;
		sprite_index = sMB_BuywithCoins
		oDashBuyController.reason = 5;
		oButtonHomePage.locked = 0;
		oButtonCoinsBuy.locked = 0;
		oDashBuyButton2.image_alpha = 1;
		oDashBuyButton3.image_alpha = 1;
	}
	else if(async_load[?"isAuthenticated"])
	{
		GooglePlayServices_SavedGames_Load(true);
	}
	else
	{
		image_alpha = 0;
		sprite_index = sMB_BuywithCoins
		oDashBuyController.reason = 5;
		oButtonHomePage.locked = 0;
		oButtonCoinsBuy.locked = 0;
		oDashBuyButton2.image_alpha = 1;
		oDashBuyButton3.image_alpha = 1;
	}
			
break;

case "GooglePlayServices_SavedGames_Load":
		
		if(!async_load[?"success"])
		{
			image_alpha = 0;
			sprite_index = sMB_BuywithCoins
			oDashBuyController.reason = 5;
			oButtonHomePage.locked = 0;
			oButtonCoinsBuy.locked = 0;
			oDashBuyButton2.image_alpha = 1;
			oDashBuyButton3.image_alpha = 1;
		}	
		//If no Player ID data found, create save profile!
		else if(async_load[?"snapshots"] == "[]")
		{	
			global.PlayerProfile.Coins = global.PlayerProfile.Coins - cost;
			global.PlayerProfile.BattlePass = 1;
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
		image_alpha = 0;
		sprite_index = sMB_BuywithCoins
		oDashBuyController.reason = 5;
		oButtonHomePage.locked = 0;
		oButtonCoinsBuy.locked = 0;
		oDashBuyButton2.image_alpha = 1;
		oDashBuyButton3.image_alpha = 1;
	}
	else
	{
		global.PlayerProfile.Coins = global.PlayerProfile.Coins - cost;
		global.PlayerProfile.BattlePass = 1;
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

    if(async_load[? "success"])
	{
		oDashBuyController.reason = 4;
		sprite_index = sMB_BuywithCoins
		oButtonHomePage.locked = 0;
		oButtonCoinsBuy.locked = 0;
		oDashBuyButton2.image_alpha = 1;
		oDashBuyButton3.image_alpha = 1;
		audio_play_sound(SoundReward2,10,false);
	}
	else
	{
		global.PlayerProfile.Coins = global.PlayerProfile.Coins + cost;
		global.PlayerProfile.BattlePass = 0;
		sprite_index = sMB_BuywithCoins
		oDashBuyController.reason = 5;
		oButtonHomePage.locked = 0;
		oButtonCoinsBuy.locked = 0;
		oDashBuyButton2.image_alpha = 1;
		oDashBuyButton3.image_alpha = 1;
	}

break

case "GooglePlayServices_SavedGames_CommitNew":

    if(async_load[? "success"])
	{
		oDashBuyController.reason = 4;
		sprite_index = sMB_BuywithCoins
		oButtonHomePage.locked = 0;
		oButtonCoinsBuy.locked = 0;
		oDashBuyButton2.image_alpha = 1;
		oDashBuyButton3.image_alpha = 1;
		audio_play_sound(SoundReward2,10,false);
	}
	else
	{
		global.PlayerProfile.Coins = global.PlayerProfile.Coins + cost;
		global.PlayerProfile.BattlePass = 0;
		sprite_index = sMB_BuywithCoins
		oDashBuyController.reason = 5;
		oButtonHomePage.locked = 0;
		oButtonCoinsBuy.locked = 0;
		oDashBuyButton2.image_alpha = 1;
		oDashBuyButton3.image_alpha = 1;
	}

break;
}
}