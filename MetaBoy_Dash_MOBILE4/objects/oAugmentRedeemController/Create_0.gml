/// @description Insert description here
// You can write your code in this editor
AugmentArray = ["Common","Rare","Legendary"];
AugmentSprite = [0,1,2];

Update = 0;
Info = 0;
Redeem = 0;
RedeemTier = "";

for (var i = 0; i < 3; i += 1)
{
    instance_create_layer(695+425*i,721,"Instances",oRedeemButton,
	{
		asset : AugmentArray[i],
		sprite : AugmentSprite[i],
	});
}

CommonAugmentPool = [
"Floor Multiplier 1","Floor Multiplier 1","Floor Multiplier 1","Floor Multiplier 1",
"Max Multiplier 1","Max Multiplier 1","Max Multiplier 1","Max Multiplier 1",
"Jump/Kick Up","Jump/Kick Up",
"Daredevil 1","Daredevil 1",
"Slow and Steady 1","Slow and Steady 1","Slow and Steady 1","Slow and Steady 1",
"Guaranteed Cat Spawn",
"More Common Cat Spawns","More Common Cat Spawns","More Common Cat Spawns","More Common Cat Spawns",
"Cat Points 1","Cat Points 1","Cat Points 1","Cat Points 1",
"Boss Spawns Up","Boss Spawns Up","Boss Spawns Up","Boss Spawns Up",
"Overshield",
"Blessed","Blessed","Blessed","Blessed",
"Battle Pass XP 1","Battle Pass XP 1","Battle Pass XP 1","Battle Pass XP 1",
"Passage of Time Up","Passage of Time Up","Passage of Time Up","Passage of Time Up",
"Easy Bosses",
"Enemy Pass through",
"STX Collector","STX Collector","STX Collector","STX Collector",
"Dog Odds 1","Dog Odds 1","Dog Odds 1","Dog Odds 1"];

for(var i = 0; i < array_length(global.PlayerProfile.CommonAugments); i += 1)
{
	temp_augment = global.PlayerProfile.CommonAugments[i];
	for(var j = 0; j < array_length(CommonAugmentPool); j += 1)
	{
		if(CommonAugmentPool[j] == temp_augment)
		{
			array_delete(CommonAugmentPool,j,1);
			break;
		}
	}
}

for(var i = 0; i < array_length(global.PlayerProfile.EquippedCommons); i += 1)
{
	temp_augment = global.PlayerProfile.EquippedCommons[i];
	for(var j = 0; j < array_length(CommonAugmentPool); j += 1)
	{
		if(CommonAugmentPool[j] == temp_augment)
		{
			array_delete(CommonAugmentPool,j,1);
			break;
		}
	}
}


RareAugmentPool = [
"Floor Multiplier 2","Floor Multiplier 2","Floor Multiplier 2",
"Max Multiplier 2","Max Multiplier 2","Max Multiplier 2",
"Slow and Steady 2","Slow and Steady 2","Slow and Steady 2",
"Hot Start",
"Flashy Points Up","Flashy Points Up","Flashy Points Up",
"Ultimate Points Up","Ultimate Points Up","Ultimate Points Up",
"Demolisher Up",
"Time Distort Enthusiast","Time Distort Enthusiast","Time Distort Enthusiast",
"Ninja",
"Mulligan",
"STX Enthusiast","STX Enthusiast","STX Enthusiast",
"Battle Pass XP 2","Battle Pass XP 2","Battle Pass XP 2",
"OP OGs","OP OGs","OP OGs",
"Cat Points 2","Cat Points 2","Cat Points 2",
"Triple Blessed","Triple Blessed","Triple Blessed",
"Dog Odds 2","Dog Odds 2","Dog Odds 2"];

for(var i = 0; i < array_length(global.PlayerProfile.RareAugments); i += 1)
{
	temp_augment = global.PlayerProfile.RareAugments[i];
	for(var j = 0; j < array_length(RareAugmentPool); j += 1)
	{
		if(RareAugmentPool[j] == temp_augment)
		{
			array_delete(RareAugmentPool,j,1);
			break;
		}
	}
}

for(var i = 0; i < array_length(global.PlayerProfile.EquippedRares); i += 1)
{
	temp_augment = global.PlayerProfile.EquippedRares[i];
	for(var j = 0; j < array_length(RareAugmentPool); j += 1)
	{
		if(RareAugmentPool[j] == temp_augment)
		{
			array_delete(RareAugmentPool,j,1);
			break;
		}
	}
}


LegendaryAugmentPool = [
"Max Multiplier +25",
"Scaling Cats",
"Ult Abuser",
"The Gauntlet",
"4th Round",
"Loaded",
"9 Lives",
"Giant Slayer",
"Can't fall through floor",
"Giga Blessed"];

for(var i = 0; i < array_length(global.PlayerProfile.LegendaryAugments); i += 1)
{
	temp_augment = global.PlayerProfile.LegendaryAugments[i];
	for(var j = 0; j < array_length(LegendaryAugmentPool); j += 1)
	{
		if(LegendaryAugmentPool[j] == temp_augment)
		{
			array_delete(LegendaryAugmentPool,j,1);
			break;
		}
	}
}

for(var i = 0; i < array_length(global.PlayerProfile.EquippedLegendary); i += 1)
{
	temp_augment = global.PlayerProfile.EquippedLegendary[i];
	for(var j = 0; j < array_length(LegendaryAugmentPool); j += 1)
	{
		if(LegendaryAugmentPool[j] == temp_augment)
		{
			array_delete(LegendaryAugmentPool,j,1);
			break;
		}
	}
}
