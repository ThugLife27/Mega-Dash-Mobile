/// @description Insert description here
// You can write your code in this editor

//Add Legendary Button
	if(array_length(global.PlayerProfile.EquippedLegendary) != 0)
	{
		instance_create_layer(1242,268,"Instances",oAugmentButton1,
		{
			Augment : global.PlayerProfile.EquippedLegendary[0],
			Slot : 0,
			Tier : "Legendary"
		});
	}
	else
	{
		instance_create_layer(1242,681,"Instances",oAugmentButton1,
		{
			Augment : "",
			Slot : 0,
			Tier : "Legendary"
		});
	}

//Add Rare Buttons
for(var i = 0; i < 3; i += 1)
{
	if(i < array_length(global.PlayerProfile.EquippedRares))
	{
		instance_create_layer(1048+195*i,473,"Instances",oAugmentButton1,
		{
			Augment : global.PlayerProfile.EquippedRares[i],
			Slot : i,
			Tier : "Rare"
		});
	}
	else
	{
		instance_create_layer(1048+195*i,473,"Instances",oAugmentButton1,
		{
			Augment : "",
			Slot : i,
			Tier : "Rare"
		});
	}
}

//Add Common Buttons
for(var i = 0; i < 4; i += 1)
{
	if(i < array_length(global.PlayerProfile.EquippedCommons))
	{
		instance_create_layer(950+195*i,681,"Instances",oAugmentButton1,
		{
			Augment : global.PlayerProfile.EquippedCommons[i],
			Slot : i,
			Tier : "Common"
		});
	}
	else
	{
		instance_create_layer(950+195*i,681,"Instances",oAugmentButton1,
		{
			Augment : "",
			Slot : i,
			Tier : "Common"
		});
	}
}
