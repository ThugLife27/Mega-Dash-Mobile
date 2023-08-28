global.pause = 0;

if(global.Character = oPlayerSTX || global.Character == oPlayerAlien)
{instance_create_layer(400,-1100,"Player",oFighterDrop);}
else
{instance_create_layer(356,-1100,"Player",oFighterDrop);}

if(global.Character == oPlayer)
{
	if(global.controlsetting = 0)
		{
			instance_create_layer(-300, -32, "Screens",oJumpTap);
			instance_create_layer(110,970,"Screens",oButtonJump);
	
			instance_create_layer(1200, -32, "Screens",oDashTap);
			instance_create_layer(1990,970,"Screens",oButtonKick);
		}
		else
		{
			instance_create_layer(-300, -32, "Screens",oDashTap);
			instance_create_layer(110,970,"Screens",oButtonKick);
	
			instance_create_layer(1200, -32, "Screens",oJumpTap);
			instance_create_layer(1990,970,"Screens",oButtonJump);
		}
}

else if(global.Character == oPlayerAlien)
{
	if(global.controlsetting = 0)
		{
			instance_create_layer(-300, 1080-215, "Screens",oJumpTap);
			instance_create_layer(110,970,"Screens",oButtonJump);
			
			instance_create_layer(0, 1080-215-1200, "Screens",oUFOTap);
			instance_create_layer(110,740,"Screens",oButtonUFO);
	
			instance_create_layer(1200, -32, "Screens",oDashTap);
			instance_create_layer(1990,970,"Screens",oButtonKick);
		}
		else
		{
			instance_create_layer(-300, -32, "Screens",oDashTap);
			instance_create_layer(110,970,"Screens",oButtonKick);
	
			instance_create_layer(1200, 1080-215, "Screens",oJumpTap);
			instance_create_layer(1990,970,"Screens",oButtonJump);
			
			instance_create_layer(1200, 1080-215-1200, "Screens",oUFOTap);
			instance_create_layer(1990,740,"Screens",oButtonUFO);
		}
}

else if(global.Character == oPlayerSTX)
{
	if(global.controlsetting = 0)
		{
			instance_create_layer(-300, 1080-215, "Screens",oJumpTap);
			instance_create_layer(110,970,"Screens",oButtonJump);
			
			instance_create_layer(0, 1080-215-1200, "Screens",oHoverTap);
			instance_create_layer(110,740,"Screens",oButtonHover);
	
			instance_create_layer(1200, -32, "Screens",oShootTap);
			instance_create_layer(1990,970,"Screens",oButtonShoot);
		}
		else
		{
			instance_create_layer(-300, -32, "Screens",oShootTap);
			instance_create_layer(110,970,"Screens",oButtonShoot);
	
			instance_create_layer(1200, 1080-215, "Screens",oJumpTap);
			instance_create_layer(1990,970,"Screens",oButtonJump);
			
			instance_create_layer(1200, 1080-215-1200, "Screens",oHoverTap);
			instance_create_layer(1990,740,"Screens",oButtonHover);
		}
}
