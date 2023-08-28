/// @description Insert description here
// You can write your code in this editor

if(Update == 1)
{
	with(oBattlePassClaimButton)
	{instance_destroy();}
	
	if(instance_exists(oBattlePassSprite))
	{
		with(oBattlePassSprite)
		{instance_destroy();}
	}
	
	for (var i = 0; i < 5; i += 1)
	{
		if(i+Page*5 < array_length(BattlePassAssets))
		{
		    instance_create_layer(339+415*i,665,"Instances",oBattlePassClaimButton,
				{
					asset : BattlePassAssets[i+Page*5],
					type : BattlePassType[i+Page*5],
					details : BattlePassDetails[i+Page*5],
					xp_cost : BattlePassXP[i+Page*5],
					level : (i+Page*5)+1,
					claimed : global.PlayerProfile.BattlePassClaimed[i+Page*5]
				});
		}
	}
	
	Update = 0;
}