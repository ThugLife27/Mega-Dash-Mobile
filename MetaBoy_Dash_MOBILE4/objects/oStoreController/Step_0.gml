/// @description Insert description here
// You can write your code in this editor
if(Update == 1)
{
	with(oStoreBuyButton)
	{instance_destroy();}
	with(oStoreSprite)
	{instance_destroy();}
	with(oStoreInfoButton)
	{instance_destroy();}
	
	if(instance_exists(oStoreConfirmPurchase))
	{
		with(oStoreConfirmPurchase)
		{instance_destroy();}
	}
	
	if(instance_exists(oAugmentRedeemGoto))
	{
		with(oAugmentRedeemGoto)
		{instance_destroy();}
	}
	
	if(Info == 1)
	{
		oStoreInfoBox.image_alpha = 1;
		oStoreArrowLeft.image_alpha = 0;
		oStoreArrowRight.image_alpha = 0;
				
		instance_create_layer(695,721,"Instances",oStoreBuyButton,
		{
			asset : Info_asset,
			cost : Info_cost,
			sprite : Info_sprite,
		});
	}
	else if(Purchase == 1)
	{
		oStoreInfoBox.image_alpha = 1;
		oStoreArrowLeft.image_alpha = 0;
		oStoreArrowRight.image_alpha = 0;
				
		instance_create_layer(695,721,"Instances",oStoreBuyButton,
		{
			asset : Buy_asset,
			cost : Buy_cost,
			sprite : Buy_sprite,
		});
	}
	
	else
	{
		oStoreInfoBox.image_alpha = 0;	
		if(ArraySelect != AugmentArray)
		{
		oStoreArrowLeft.image_alpha = 1;
		oStoreArrowRight.image_alpha = 1;
		}
		
		for (var i = 0; i < 4; i += 1)
		{
		    if(i+Page*4 < array_length(ArraySelect))
			{
				instance_create_layer(695+425*i,721,"Instances",oStoreBuyButton,
				{
					asset : ArraySelect[i+Page*4],
					cost : CostArraySelect[i+Page*4],
					sprite : SpriteArraySelect[i+Page*4],
				});
			}
		}
	}
	
	Update = 0;
}