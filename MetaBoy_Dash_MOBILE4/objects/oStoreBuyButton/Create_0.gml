/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();
owned = 0;
all_owned = 0;
draw_augment_count = 0;
augments_owned = 0;

if(oStoreController.ArraySelect == oStoreController.CharacterArray)
{
	for (var i = 0; i < array_length(global.PlayerProfile.Characters); i += 1)
	{
		if(global.PlayerProfile.Characters[i] == asset)
		{owned = 1;}
	}
}
else if(oStoreController.ArraySelect == oStoreController.LevelArray)
{
	for (var i = 0; i < array_length(global.PlayerProfile.Levels); i += 1)
	{
		if(global.PlayerProfile.Levels[i] == asset)
		{owned = 1;}
	}
}
else if(oStoreController.ArraySelect == oStoreController.AugmentArray)
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
				all_owned = 1;
				image_alpha = 0;
			}
		break;
	
		case "Rare":
			if(array_length(global.PlayerProfile.EquippedRares) + array_length(global.PlayerProfile.RareAugments) + augments_owned >= 40)
			{
				all_owned = 1;
				image_alpha = 0;
			}
		break;
	
		case "Legendary":
			if(array_length(global.PlayerProfile.EquippedLegendary) + array_length(global.PlayerProfile.LegendaryAugments) + augments_owned >= 10)
			{
				all_owned = 1;
				image_alpha = 0;
			}
		break;
	}

}

if(oStoreController.Purchase == 1)
{image_index = 2;}
else if(owned == 1 || all_owned == 1)
{
	image_index = 3;
	image_alpha = 0;	
}
else if(global.PlayerProfile.Coins >= cost)
{image_index = 0;}
else
{image_index = 1;}

if(image_index != 2)
{
	instance_create_layer(x,y-95,"Instances",oStoreInfoButton,
	{
		asset : asset,
		cost : cost,
		sprite : sprite,
		image_index : oStoreController.Info
	});
}
else
{
	instance_create_layer(1530,479,"Instances2",oStoreConfirmPurchase,
	{
		asset : asset,
		cost : cost,
		sprite : sprite,
	});
}

if(oStoreController.ArraySelect == oStoreController.LevelArray)
{
	instance_create_layer(x,y-360,"Instances",oStoreSprite,
	{
		sprite_index : sMapIcons,
		image_index : sprite,
		image_speed : 0,
		image_xscale : .4,
		image_yscale : .4
	});
}
else if(oStoreController.ArraySelect == oStoreController.AugmentArray)
{
	instance_create_layer(x,y-285,"Instances",oStoreSprite,
	{
	sprite_index : sStoreAugmentIcons,
	image_index : sprite
	});
	
	draw_augment_count = 1;
}
else
{
	instance_create_layer(x,y-250,"Instances",oStoreSprite,
	{sprite_index : sprite});
}


