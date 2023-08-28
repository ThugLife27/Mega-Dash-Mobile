global.pause = 0;
global.Character = oPlayerTutorial;
global.ButtonToggle = 1;
global.controlsetting = 0;

instance_create_layer(356,700,"Player",global.Character);

instance_create_layer(-300, -32, "Screens",oJumpTap);
instance_create_layer(110,970,"Screens",oButtonJump);
	
instance_create_layer(1200, -32, "Screens",oDashTap);
instance_create_layer(1990,970,"Screens",oButtonKick);

