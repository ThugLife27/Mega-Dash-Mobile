/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

success_timer = 90;
reason = 0;
selected = 0;
free = 0;
augments_owned = 0;

if(global.PlayerProfile.BattlePass == 0)
{free = 1;}

if(type == "Fighter")
{
	for(var i = 0; i < array_length(global.PlayerProfile.Characters);i+=1)
	{
		if(global.PlayerProfile.Characters[i] == asset)
		{claimed = 1;}
	}
	
	instance_create_layer(x,y-190,"Instances",oBattlePassSprite,
	{
		xp_cost : xp_cost,
		claimed : claimed,
		sprite_index : details,
		image_xscale : 1.5,
		image_yscale : 1.5
	});
}

if(type == "Level")
{
	for(var i = 0; i < array_length(global.PlayerProfile.Levels);i+=1)
	{
		if(global.PlayerProfile.Levels[i] == asset)
		{claimed = 1;}
	}
}

if(type == "Augment")
{
	for(var i = 0; i < array_length(global.PlayerProfile.UnredeemedAugments); i+=1)
		{
			if(global.PlayerProfile.UnredeemedAugments[i] == asset)
			{augments_owned++;}
		}
	
		switch(asset)
		{
			case "Common":
				if(array_length(global.PlayerProfile.EquippedCommons) + array_length(global.PlayerProfile.CommonAugments) + augments_owned >= 52)
				{
					claimed = 1;
				}
			break;
	
			case "Rare":
				if(array_length(global.PlayerProfile.EquippedRares) + array_length(global.PlayerProfile.RareAugments) + augments_owned >= 40)
				{
					claimed = 1;
				}
			break;
	
			case "Legendary":
				if(array_length(global.PlayerProfile.EquippedLegendary) + array_length(global.PlayerProfile.LegendaryAugments) + augments_owned >= 10)
				{
					claimed = 1;
				}
			break;
		}
}


if(xp_cost > global.PlayerProfile.BattlePassXP || claimed == 1 || (global.PlayerProfile.BattlePass == 0 && xp_cost > 10000) || global.AutoSaving == 1 || global.GuestMode == 1)
{image_alpha = 0;}