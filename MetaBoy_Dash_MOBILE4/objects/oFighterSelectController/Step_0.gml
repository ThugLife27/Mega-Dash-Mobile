/// @description Insert description here
// You can write your code in this editor

if(Update == 1)
{
	with(oFighterSelectButton)
	{instance_destroy();}
	with(oFighterSelectSprite)
	{instance_destroy();}
	
	FighterShow = Page*9;
	
	for (var i = 0; i < 3; i += 1)
	{
		for (var j = 0; j < 3; j += 1)
		{
			if(FighterShow < array_length(global.PlayerProfile.Characters))
			{
				instance_create_layer(1577+j*208,276+i*208,"Instances",oFighterSelectButton,
				{Fighter : global.PlayerProfile.Characters[FighterShow]});
			}

			FighterShow++;
		}
	}
	Update = 0;
}