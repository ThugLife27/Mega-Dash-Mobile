/// @description Insert description here
// You can write your code in this editor

instance_destroy(oButtonJump);
instance_destroy(oButtonKick);
instance_destroy(oButtonUFO);
instance_destroy(oUFOTap);
instance_destroy(oJumpTap);
instance_destroy(oDashTap);

if(global.controlsetting = 0)
	{
		instance_create_layer(-300, 1080-215, "Screens",oUFODownTap);
		instance_create_layer(110,970,"Screens",oButtonUFO_Down);
			
		instance_create_layer(0, 1080-215-1200, "Screens",oUFOUpTap);
		instance_create_layer(110,740,"Screens",oButtonUFO_Up);
	
		instance_create_layer(1200, -32, "Screens",oShootTap);
		instance_create_layer(1990,970,"Screens",oButtonShoot);
	}
	else
	{
		instance_create_layer(-300, -32, "Screens",oShootTap);
		instance_create_layer(110,970,"Screens",oButtonShoot);
	
		instance_create_layer(1200, 1080-215, "Screens",oUFODownTap);
		instance_create_layer(1990,970,"Screens",oButtonUFO_Down);
			
		instance_create_layer(1200, 1080-215-1200, "Screens",oUFOUpTap);
		instance_create_layer(1990,740,"Screens",oButtonUFO_Up);
	}

instance_create_layer(oPlayerAlien.x,oPlayerAlien.y,"Player",oPlayerAlienUFO);
instance_destroy(oPlayerAlien);
instance_destroy();