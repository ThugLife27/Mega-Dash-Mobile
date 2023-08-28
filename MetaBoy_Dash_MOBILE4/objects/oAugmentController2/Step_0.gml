/// @description Insert description here
// You can write your code in this editor
if(Update == 1)
{
	switch(global.AugmentTier)
	{
	case "Common":
	Inventory = global.PlayerProfile.CommonAugments;
	break;
	
	case "Rare":
	Inventory = global.PlayerProfile.RareAugments;
	break;
	
	case "Legendary":
	Inventory = global.PlayerProfile.LegendaryAugments;
	break;
	}
	
	if(instance_exists(oAugmentButton2))
	{
		with(oAugmentButton2)
		{instance_destroy();}
	}
	
	AugmentShow = Page*9;
	
	for (var i = 0; i < 3; i += 1)
	{
		for (var j = 0; j < 3; j += 1)
		{
			if(AugmentShow < array_length(Inventory))
			{
				instance_create_layer(1568+j*216,280+i*212,"Instances",oAugmentButton2,
				{
					Augment : Inventory[AugmentShow],
					Slot : AugmentShow
				});
			}

			AugmentShow++;
		}
	}
	Update = 0;
}

if(!instance_exists(oAugmentButton2) && Page > 0)
{
	Page--;
	Update = 1;
}
else if(!instance_exists(oAugmentButton2) || (oAugmentArrowLeft.image_index == 1 && oAugmentArrowRight.image_index == 1))
{
	oAugmentArrowLeft.image_alpha = 0;
	oAugmentArrowRight.image_alpha = 0;
}
else
{
	oAugmentArrowLeft.image_alpha = 1;
	oAugmentArrowRight.image_alpha = 1;
}