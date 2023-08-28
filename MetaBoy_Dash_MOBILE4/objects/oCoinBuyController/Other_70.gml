/// @description Insert description here
// You can write your code in this editor
if(global.AutoSaving == 0)
{
switch(async_load[? "type"])
{

case "GooglePlayServices_SavedGames_CommitAndClose":
{
    if(async_load[? "success"])
	{
		GPBilling_ConsumeProduct(token);
	}
	else
	{
      	global.PlayerProfile.Coins -= coin_amount;
		with(button){sprite_index = sCoinBuyButton;}
		reason = 4;
		oButtonHomePage.locked = 0;
		oButtonBattlePassBuy.locked = 0;
	}
}
break

case "GooglePlayServices_SavedGames_Load":
		
		if(!async_load[?"success"])
		{
	      	global.PlayerProfile.Coins -= coin_amount;
			with(button){sprite_index = sCoinBuyButton;}
			reason = 4;
			oButtonHomePage.locked = 0;
			oButtonBattlePassBuy.locked = 0;
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
	   	global.PlayerProfile.Coins -= coin_amount;
		with(button){sprite_index = sCoinBuyButton;}
		reason = 4;
		oButtonHomePage.locked = 0;
		oButtonBattlePassBuy.locked = 0;
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

case "GooglePlayServices_SavedGames_CommitNew":
    if(async_load[? "success"])
	{
		GPBilling_ConsumeProduct(token);
	}
	else
	{
      	global.PlayerProfile.Coins -= coin_amount;
		with(button){sprite_index = sCoinBuyButton;}
		reason = 4;
		oButtonHomePage.locked = 0;
		oButtonBattlePassBuy.locked = 0;
	}
break;
}
}