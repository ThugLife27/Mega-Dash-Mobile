/// @description Insert description here
// You can write your code in this editor
if(image_alpha == 1)
{
switch(async_load[? "type"])
{

case "GooglePlayServices_IsAuthenticated":
	if(!async_load[?"success"])
	{
		image_alpha = 0;
		reason = 1;
		oButtonHomePage.locked = 0;
	}
	else if(async_load[?"isAuthenticated"])
	{			
		GooglePlayServices_SavedGames_Load(true);
	}
	else
	{
		image_alpha = 0;
		reason = 1;
		oButtonHomePage.locked = 0;
	}
			
break;

case "GooglePlayServices_SavedGames_Load":
		
	if(!async_load[?"success"])
	{
		image_alpha = 0;
		reason = 1;
		oButtonHomePage.locked = 0;
	}	
		//If no Player ID data found, create save profile!
	else if(async_load[?"snapshots"] == "[]")
	{	
		switch(RedeemTier)
		{
			case "Common":
			array_push(global.PlayerProfile.CommonAugments,Augment);
			for(var i = 0; i < array_length(global.PlayerProfile.UnredeemedAugments); i+=1)
			{
				if(global.PlayerProfile.UnredeemedAugments[i] == "Common")
				{
					array_delete(global.PlayerProfile.UnredeemedAugments,i,1);
					break;
				}
			}
			break;
			
			case "Rare":
			array_push(global.PlayerProfile.RareAugments,Augment);
			for(var i = 0; i < array_length(global.PlayerProfile.UnredeemedAugments); i+=1)
			{
				if(global.PlayerProfile.UnredeemedAugments[i] == "Rare")
				{
					array_delete(global.PlayerProfile.UnredeemedAugments,i,1);
					break;
				}
			}
			break;
		
			case "Legendary":
			array_push(global.PlayerProfile.LegendaryAugments,Augment);
			for(var i = 0; i < array_length(global.PlayerProfile.UnredeemedAugments); i+=1)
			{
				if(global.PlayerProfile.UnredeemedAugments[i] == "Legendary")
				{
					array_delete(global.PlayerProfile.UnredeemedAugments,i,1);
					break;
				}
			}
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
		image_alpha = 0;
		reason = 1;
		oButtonHomePage.locked = 0;
	}
	else
	{
		switch(RedeemTier)
		{
			case "Common":
			array_push(global.PlayerProfile.CommonAugments,Augment);
			for(var i = 0; i < array_length(global.PlayerProfile.UnredeemedAugments); i+=1)
			{
				if(global.PlayerProfile.UnredeemedAugments[i] == "Common")
				{
					array_delete(global.PlayerProfile.UnredeemedAugments,i,1);
					break;
				}
			}
			break;
			
			case "Rare":
			array_push(global.PlayerProfile.RareAugments,Augment);
			for(var i = 0; i < array_length(global.PlayerProfile.UnredeemedAugments); i+=1)
			{
				if(global.PlayerProfile.UnredeemedAugments[i] == "Rare")
				{
					array_delete(global.PlayerProfile.UnredeemedAugments,i,1);
					break;
				}
			}
			break;
		
			case "Legendary":
			array_push(global.PlayerProfile.LegendaryAugments,Augment);
			for(var i = 0; i < array_length(global.PlayerProfile.UnredeemedAugments); i+=1)
			{
				if(global.PlayerProfile.UnredeemedAugments[i] == "Legendary")
				{
					array_delete(global.PlayerProfile.UnredeemedAugments,i,1);
					break;
				}
			}
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
		switch(RedeemTier)
		{
			case "Common":
			array_push(global.PlayerProfile.UnredeemedAugments,"Common");
			for(var i = 0; i < array_length(global.PlayerProfile.CommonAugments); i+=1)
			{
				if(global.PlayerProfile.CommonAugments[i] == Augment)
				{
					array_delete(global.PlayerProfile.CommonAugments,i,1);
					break;
				}
			}
			break;
			
			case "Rare":
			array_push(global.PlayerProfile.UnredeemedAugments,"Rare");
			for(var i = 0; i < array_length(global.PlayerProfile.RareAugments); i+=1)
			{
				if(global.PlayerProfile.RareAugments[i] == Augment)
				{
					array_delete(global.PlayerProfile.RareAugments,i,1);
					break;
				}
			}
			break;
		
			case "Legendary":
			array_push(global.PlayerProfile.UnredeemedAugments,"Legendary");
			for(var i = 0; i < array_length(global.PlayerProfile.LegendaryAugments); i+=1)
			{
				if(global.PlayerProfile.LegendaryAugments[i] == Augment)
				{
					array_delete(global.PlayerProfile.LegendaryAugments,i,1);
					break;
				}
			}
			break;
		}
		
		image_alpha = 0;
		reason = 1;
		oButtonHomePage.locked = 0;
	}
	else
	{
		image_alpha = 0;
		audio_play_sound(SoundReward2,10,false);
		reason = 2;
		oButtonHomePage.locked = 0;
	}

break

case "GooglePlayServices_SavedGames_CommitNew":
    
	if(!async_load[? "success"])
	{
		switch(RedeemTier)
		{
			case "Common":
			array_push(global.PlayerProfile.UnredeemedAugments,"Common");
			for(var i = 0; i < array_length(global.PlayerProfile.CommonAugments); i+=1)
			{
				if(global.PlayerProfile.CommonAugments[i] == Augment)
				{
					array_delete(global.PlayerProfile.CommonAugments,i,1);
					break;
				}
			}
			break;
			
			case "Rare":
			array_push(global.PlayerProfile.UnredeemedAugments,"Rare");
			for(var i = 0; i < array_length(global.PlayerProfile.RareAugments); i+=1)
			{
				if(global.PlayerProfile.RareAugments[i] == Augment)
				{
					array_delete(global.PlayerProfile.RareAugments,i,1);
					break;
				}
			}
			break;
		
			case "Legendary":
			array_push(global.PlayerProfile.UnredeemedAugments,"Legendary");
			for(var i = 0; i < array_length(global.PlayerProfile.LegendaryAugments); i+=1)
			{
				if(global.PlayerProfile.LegendaryAugments[i] == Augment)
				{
					array_delete(global.PlayerProfile.LegendaryAugments,i,1);
					break;
				}
			}
			break;
		}
		
	
	image_alpha = 0;
	reason = 1;
	oButtonHomePage.locked = 0;
	}
	else
	{
		image_alpha = 0;
		audio_play_sound(SoundReward2,10,false);
		reason = 2;
		oButtonHomePage.locked = 0;
	}
break;
}
}