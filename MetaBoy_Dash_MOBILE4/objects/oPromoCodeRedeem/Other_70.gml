/// @description Insert description here
// You can write your code in this editor
switch(async_load[? "type"])
{

case "GooglePlayServices_IsAuthenticated":
	if(!async_load[?"success"])
	{
		oLoadingCircle.image_alpha = 0;
		image_alpha = 1;
		oPromoCodeExit.image_alpha = 1;
		oPromoCodePaste.image_alpha = 1;
		keyboard_string = "";
		redeeming = 0;
		failed = 1;
		reason = 2;
		audio_play_sound(SoundSelectionReject,10,false,.5);
	}
	else if(async_load[?"isAuthenticated"])
	{
		GooglePlayServices_SavedGames_Load(true);
	}
	else
	{
		oLoadingCircle.image_alpha = 0;
		image_alpha = 1;
		oPromoCodeExit.image_alpha = 1;
		oPromoCodePaste.image_alpha = 1;
		keyboard_string = "";
		redeeming = 0;
		failed = 1;
		reason = 2;
		audio_play_sound(SoundSelectionReject,10,false,.5);
	}
			
break;

case "GooglePlayServices_SavedGames_Load":
		
	if(!async_load[?"success"])
	{
		oLoadingCircle.image_alpha = 0;
		image_alpha = 1;
		oPromoCodeExit.image_alpha = 1;
		oPromoCodePaste.image_alpha = 1;
		keyboard_string = "";
		redeeming = 0;
		failed = 1;
		reason = 2;
		audio_play_sound(SoundSelectionReject,10,false,.5);
	}	
		//If no Player ID data found, create save profile!
	else if(async_load[?"snapshots"] == "[]")
	{	
		switch(promocode_reward)
			{
				case "Silver_Pass":
					temp_battlepass = global.PlayerProfile.BattlePass;
					global.PlayerProfile.BattlePass = max(global.PlayerProfile.BattlePass,1);
				break;
			
				case "Gold_Pass":
					temp_battlepass = global.PlayerProfile.BattlePass;
					global.PlayerProfile.BattlePass = max(global.PlayerProfile.BattlePass,2);
					if(temp_battlepass < 2)
					{
					array_push(global.PlayerProfile.UnredeemedAugments,"Common");
					array_push(global.PlayerProfile.UnredeemedAugments,"Common");
					array_push(global.PlayerProfile.UnredeemedAugments,"Common");
					array_push(global.PlayerProfile.UnredeemedAugments,"Common");
					array_push(global.PlayerProfile.UnredeemedAugments,"Rare");
					array_push(global.PlayerProfile.UnredeemedAugments,"Rare");
					array_push(global.PlayerProfile.UnredeemedAugments,"Rare");
					array_push(global.PlayerProfile.UnredeemedAugments,"Legendary");
					}
				break;
			
				case "Diamond_Pass":
					temp_battlepass = global.PlayerProfile.BattlePass;
					global.PlayerProfile.BattlePass = max(global.PlayerProfile.BattlePass,3);
					if(temp_battlepass < 2)
					{
					array_push(global.PlayerProfile.UnredeemedAugments,"Common");
					array_push(global.PlayerProfile.UnredeemedAugments,"Common");
					array_push(global.PlayerProfile.UnredeemedAugments,"Common");
					array_push(global.PlayerProfile.UnredeemedAugments,"Common");
					array_push(global.PlayerProfile.UnredeemedAugments,"Rare");
					array_push(global.PlayerProfile.UnredeemedAugments,"Rare");
					array_push(global.PlayerProfile.UnredeemedAugments,"Rare");
					array_push(global.PlayerProfile.UnredeemedAugments,"Legendary");
					}
					
					if(temp_battlepass < 3)
					{
					array_push(global.PlayerProfile.Characters,"Secret Agent");
					array_push(global.PlayerProfile.UnredeemedAugments,"Common");
					array_push(global.PlayerProfile.UnredeemedAugments,"Common");
					array_push(global.PlayerProfile.UnredeemedAugments,"Common");
					array_push(global.PlayerProfile.UnredeemedAugments,"Common");
					array_push(global.PlayerProfile.UnredeemedAugments,"Rare");
					array_push(global.PlayerProfile.UnredeemedAugments,"Rare");
					array_push(global.PlayerProfile.UnredeemedAugments,"Rare");
					array_push(global.PlayerProfile.UnredeemedAugments,"Legendary");
					}
				break;
			
				case "Common_Augment":
					array_push(global.PlayerProfile.UnredeemedAugments,"Common");
				break;
			
				case "Rare_Augment":
					array_push(global.PlayerProfile.UnredeemedAugments,"Rare");
				break;
			
				case "Legendary_Augment":
					array_push(global.PlayerProfile.UnredeemedAugments,"Legendary");
				break;
			
				case "200_Coins":
					global.PlayerProfile.Coins += 200;
				break;
			
				case "500_Coins":
					global.PlayerProfile.Coins += 500;
				break;
			
				case "1000_Coins":
					global.PlayerProfile.Coins += 1000;	
				break;
			
				case "1500_Coins":
					global.PlayerProfile.Coins += 1500;
				break;
			
				case "2000_Coins":
					global.PlayerProfile.Coins += 2000;
				break;
			
				case "3000_Coins":
					global.PlayerProfile.Coins += 3000;
				break;
			}
		
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
		oLoadingCircle.image_alpha = 0;
		image_alpha = 1;
		oPromoCodeExit.image_alpha = 1;
		oPromoCodePaste.image_alpha = 1;
		keyboard_string = "";
		redeeming = 0;
		failed = 1;
		reason = 2;
		audio_play_sound(SoundSelectionReject,10,false,.5);
	}
	else
	{
		switch(promocode_reward)
		{
			case "Silver_Pass":
				temp_battlepass = global.PlayerProfile.BattlePass;
				global.PlayerProfile.BattlePass = max(global.PlayerProfile.BattlePass,1);
			break;
			
			case "Gold_Pass":
				temp_battlepass = global.PlayerProfile.BattlePass;
				global.PlayerProfile.BattlePass = max(global.PlayerProfile.BattlePass,2);
				if(temp_battlepass < 2)
				{
				array_push(global.PlayerProfile.UnredeemedAugments,"Common");
				array_push(global.PlayerProfile.UnredeemedAugments,"Common");
				array_push(global.PlayerProfile.UnredeemedAugments,"Common");
				array_push(global.PlayerProfile.UnredeemedAugments,"Common");
				array_push(global.PlayerProfile.UnredeemedAugments,"Rare");
				array_push(global.PlayerProfile.UnredeemedAugments,"Rare");
				array_push(global.PlayerProfile.UnredeemedAugments,"Rare");
				array_push(global.PlayerProfile.UnredeemedAugments,"Legendary");
				}
			break;
			
			case "Diamond_Pass":
				temp_battlepass = global.PlayerProfile.BattlePass;
				global.PlayerProfile.BattlePass = max(global.PlayerProfile.BattlePass,3);
				
				if(temp_battlepass < 2)
				{
				array_push(global.PlayerProfile.UnredeemedAugments,"Common");
				array_push(global.PlayerProfile.UnredeemedAugments,"Common");
				array_push(global.PlayerProfile.UnredeemedAugments,"Common");
				array_push(global.PlayerProfile.UnredeemedAugments,"Common");
				array_push(global.PlayerProfile.UnredeemedAugments,"Rare");
				array_push(global.PlayerProfile.UnredeemedAugments,"Rare");
				array_push(global.PlayerProfile.UnredeemedAugments,"Rare");
				array_push(global.PlayerProfile.UnredeemedAugments,"Legendary");
				}
					
				if(temp_battlepass < 3)
				{
				array_push(global.PlayerProfile.Characters,"Secret Agent");
				array_push(global.PlayerProfile.UnredeemedAugments,"Common");
				array_push(global.PlayerProfile.UnredeemedAugments,"Common");
				array_push(global.PlayerProfile.UnredeemedAugments,"Common");
				array_push(global.PlayerProfile.UnredeemedAugments,"Common");
				array_push(global.PlayerProfile.UnredeemedAugments,"Rare");
				array_push(global.PlayerProfile.UnredeemedAugments,"Rare");
				array_push(global.PlayerProfile.UnredeemedAugments,"Rare");
				array_push(global.PlayerProfile.UnredeemedAugments,"Legendary");
				}
			break;
			
			case "Common_Augment":
				array_push(global.PlayerProfile.UnredeemedAugments,"Common");
			break;
			
			case "Rare_Augment":
				array_push(global.PlayerProfile.UnredeemedAugments,"Rare");
			break;
			
			case "Legendary_Augment":
				array_push(global.PlayerProfile.UnredeemedAugments,"Legendary");
			break;
			
			case "200_Coins":
				global.PlayerProfile.Coins += 200;
			break;
			
			case "500_Coins":
				global.PlayerProfile.Coins += 500;
			break;
			
			case "1000_Coins":
				global.PlayerProfile.Coins += 1000;	
			break;
			
			case "1500_Coins":
				global.PlayerProfile.Coins += 1500;
			break;
			
			case "2000_Coins":
				global.PlayerProfile.Coins += 2000;
			break;
			
			case "3000_Coins":
				global.PlayerProfile.Coins += 3000;
			break;
		}
		
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
		switch(promocode_reward)
		{
			case "Silver_Pass":
				global.PlayerProfile.BattlePass = temp_battlepass;
			break;
			
			case "Gold_Pass":
				global.PlayerProfile.BattlePass = temp_battlepass;
				if(temp_battlepass < 2)
				{
					for(var i = 0; i < 8; i+=1)
					{
						array_pop(global.PlayerProfile.UnredeemedAugments);
					}
				}
			break;
			
			case "Diamond_Pass":
				global.PlayerProfile.BattlePass = temp_battlepass;
				if(temp_battlepass < 2)
				{
					for(var i = 0; i < 8; i+=1)
					{
						array_pop(global.PlayerProfile.UnredeemedAugments);
					}
				}
				
				if(temp_battlepass < 3)
				{
					array_pop(global.PlayerProfile.Characters);
					for(var i = 0; i < 8; i+=1)
					{
						array_pop(global.PlayerProfile.UnredeemedAugments);
					}
				}
			break;
			
			case "Common_Augment":
				array_pop(global.PlayerProfile.UnredeemedAugments);
			break;
			
			case "Rare_Augment":
				array_pop(global.PlayerProfile.UnredeemedAugments);
			break;
			
			case "Legendary_Augment":
				array_pop(global.PlayerProfile.UnredeemedAugments);
			break;
			
			case "200_Coins":
				global.PlayerProfile.Coins -= 200;
			break;
			
			case "500_Coins":
				global.PlayerProfile.Coins -= 500;
			break;
			
			case "1000_Coins":
				global.PlayerProfile.Coins -= 1000;	
			break;
			
			case "1500_Coins":
				global.PlayerProfile.Coins -= 1500;
			break;
			
			case "2000_Coins":
				global.PlayerProfile.Coins -= 2000;
			break;
			
			case "3000_Coins":
				global.PlayerProfile.Coins -= 3000;
			break;
		}
		
		oLoadingCircle.image_alpha = 0;
		image_alpha = 1;
		oPromoCodeExit.image_alpha = 1;
		oPromoCodePaste.image_alpha = 1;
		keyboard_string = "";
		redeeming = 0;
		failed = 1;
		reason = 2;
		audio_play_sound(SoundSelectionReject,10,false,.5);
	}
	else
	{
		var url = "https://metaboypromoman.azurewebsites.net/mark-promo-code-as-redeemed";
		show_debug_message(url);
		var map = ds_map_create();
		ds_map_add(map, "accept", "*/*");
		ds_map_add(map, "Content-Type", "application/json");
		ds_map_add(map, "X-Api-Key", "1ILOTyRR2FhltbfLEsGQzrN2c7BDA4WgZIx5XESBO3CtO4aLucIC6lH4APWAFrvA");
			
		var data = "{\"promoCode\":\""+string(promocode)+"\"}";
			
		http_type = 1;
		request = http_request(url, "POST", map, data);
	}

break

case "GooglePlayServices_SavedGames_CommitNew":
    
	    if(!async_load[? "success"])
	{
		switch(promocode_reward)
		{
			case "Silver_Pass":
				global.PlayerProfile.BattlePass = temp_battlepass;
			break;
			
			case "Gold_Pass":
				global.PlayerProfile.BattlePass = temp_battlepass;
				if(temp_battlepass < 2)
				{
					for(var i = 0; i < 8; i+=1)
					{
						array_pop(global.PlayerProfile.UnredeemedAugments);
					}
				}
			break;
			
			case "Diamond_Pass":
				global.PlayerProfile.BattlePass = temp_battlepass;
				if(temp_battlepass < 2)
				{
					for(var i = 0; i < 8; i+=1)
					{
						array_pop(global.PlayerProfile.UnredeemedAugments);
					}
				}
				
				if(temp_battlepass < 3)
				{
					array_pop(global.PlayerProfile.Characters);
					for(var i = 0; i < 8; i+=1)
					{
						array_pop(global.PlayerProfile.UnredeemedAugments);
					}
				}
			break;
			
			case "Common_Augment":
				array_pop(global.PlayerProfile.UnredeemedAugments);
			break;
			
			case "Rare_Augment":
				array_pop(global.PlayerProfile.UnredeemedAugments);
			break;
			
			case "Legendary_Augment":
				array_pop(global.PlayerProfile.UnredeemedAugments);
			break;
			
			case "200_Coins":
				global.PlayerProfile.Coins -= 200;
			break;
			
			case "500_Coins":
				global.PlayerProfile.Coins -= 500;
			break;
			
			case "1000_Coins":
				global.PlayerProfile.Coins -= 1000;	
			break;
			
			case "1500_Coins":
				global.PlayerProfile.Coins -= 1500;
			break;
			
			case "2000_Coins":
				global.PlayerProfile.Coins -= 2000;
			break;
			
			case "3000_Coins":
				global.PlayerProfile.Coins -= 3000;
			break;
		}
		
		oLoadingCircle.image_alpha = 0;
		image_alpha = 1;
		oPromoCodeExit.image_alpha = 1;
		oPromoCodePaste.image_alpha = 1;
		keyboard_string = "";
		redeeming = 0;
		failed = 1;
		reason = 2;
		audio_play_sound(SoundSelectionReject,10,false,.5);
	}
	else
	{
		var url = "https://metaboypromoman.azurewebsites.net/mark-promo-code-as-redeemed";
		show_debug_message(url);
		var map = ds_map_create();
		ds_map_add(map, "accept", "*/*");
		ds_map_add(map, "Content-Type", "application/json");
		ds_map_add(map, "X-Api-Key", "1ILOTyRR2FhltbfLEsGQzrN2c7BDA4WgZIx5XESBO3CtO4aLucIC6lH4APWAFrvA");
			
		var data = "{\"promoCode\":\""+string(promocode)+"\"}";
			
		http_type = 1;
		request = http_request(url, "POST", map, data);
	}
break;
}