if(global.pause == 0)
{

//Get Player Input
if (controller_lockout == 1)
	{
		key_up = 0;
		key_up_start = 0;
		key_down = 0;
		key_down_start = 0;
		key_shoot = 0;
	}	
else if (global.UltimateActive == 0)
{
	key_up = oUFOUpTap.UFOUpTap;
	key_up_start = oUFOUpTap.UFOUpTapStart;
	key_down = oUFODownTap.UFODownTap;
	key_down_start = oUFODownTap.UFODownTapStart;
	key_shoot = oShootTap.ShootTapStart;
}
else
{
	key_up = oUFOUpTap.UFOUpTap;
	key_up_start = oUFOUpTap.UFOUpTapStart
	key_down = oUFODownTap.UFODownTap;
	key_down_start = oUFODownTap.UFODownTapStart;
}

if(global.uGhost == 1 && global.GhostReadyTimer >= (7*60) && global.gamestart == 1 && global.UltimateActive == 0)
{
	if(key_ghost == 1)
	{
		global.GhostActive = 1;
		audio_play_sound(SoundGhost,10,false,10);
		oGhostButton.flash = 20;
		time = 50; //milliseconds
		amplitude = 100; //255 is the max
		androidVibrate(time,amplitude);
	}
}

if(global.uTimeDistort == 1 && global.TimeDistortUsed == 0 && global.TimeDistortTimer >= (240) && global.gamestart == 1 && global.UltimateActive == 0)
{
	//key_timedistort = max(keyboard_check_pressed(vk_enter),gamepad_button_check_pressed(0,gp_face2));
	if(key_timedistort == 1)
	{
		global.TimeDistortActive = 1;
		global.TimeDistortUsed = 1;
		global.wallflash = 28;
		audio_play_sound(SoundTimeDistort,10,false,1);
		oTimeDistortButton.flash = 20;
		time = 50; //milliseconds
		amplitude = 100; //255 is the max
		androidVibrate(time,amplitude);
	}	
}
else{global.wallflash--;if(global.wallflash<0){global.wallflash=0;}}
 
if(global.uUltimate == 1 && global.UltimateCounter >= 1 && global.gamestart == 1 && global.UltimateComplete == 0 && global.UltimateActive == 0 && key_ult == 1)
{
	global.UltimateStart = 1;
	shoot_lockout = 45;
	oUltButton.flash = 20;
	time = 50; //milliseconds
	amplitude = 100; //255 is the max
	androidVibrate(time,amplitude);
} 
 
 vsp = vsp + grv;
	
	//Ult Laser
	if (global.UltimateActive == 1)
		{
			if(shoot_lockout == 0)
			{
				instance_create_layer(x+53,y-7,"Player",oUltLaser)
				audio_play_sound(SoundLaserShot,10,false);
				shoot_lockout = max(30-global.UltimateCounter,5);
			};
			
			if (shoot_lockout > 0) {shoot_lockout--;}
		}
		
	//Use Weapon
	if (key_shoot == 1 && shot_lockout == 0)
	{
		time = 30; //milliseconds
		amplitude = 100; //255 is the max
		androidVibrate(time,amplitude);
		
		instance_create_layer(x+100,y+3,"Laser",oAlienLaser);

		//instance_create_layer(x+100,y+3,"Laser",oAlienLaser,
		//{
		//	move_angle : 30*pi/180,
		//	image_angle : -30
		//});
		
		//instance_create_layer(x+100,y+3,"Laser",oAlienLaser,
		//{
		//	move_angle : -30*pi/180,
		//	image_angle : 30
		//});	

		audio_play_sound(SoundAlienShot,10,false,.5);
		shot_lockout = 4;
	};

	if (shot_lockout > 0) {shot_lockout = shot_lockout - 1;}
		
	//Jump
	if (key_up_start == 1 || key_down_start == 1)
	{ 
		time = 50; //milliseconds
		amplitude = 100; //255 is the max
		androidVibrate(time,amplitude);
	}
	
	if (key_up == 1)
	{vsp = -10 - 2*global.uDareDevil - 2*global.uNimbleFighter - 2*global.AUG_JumpKickUp;}
	else if(key_down == 1)
	{vsp = (-10 - 2*global.uDareDevil - 2*global.uNimbleFighter - 2*global.AUG_JumpKickUp)*-1;}
	else
	{vsp = 0;}

	//Horizontal Collision
if(global.GhostActive == 1 && global.GhostReadyTimer == 0 && !place_meeting(x,y,oWall))
{global.GhostActive = 0;}

if(global.NinjaActive == 1 && global.NinjaTimer == 0 && !place_meeting(x,y,oWall))
{
	global.NinjaActive = 0;
	global.NinjaTimer = 60;	
}

if (place_meeting(x+1,y,oWall) && global.UltimateActive == 0 && global.GhostActive == 0 && global.NinjaActive == 0 && global.player_revive_mode == 0)
	{
		while(place_meeting(x,y,oWall)){x--;}
		hsp = global.hsp_oWall;
		x = x + global.hsp_oWall;
	}
else if (x < 356)
	{
		hsp = 8 + 8*global.uDareDevil;
		x = x + hsp;
		if (x > 356){x = 356; hsp = 0;}
	}
else if (x > 356)
	{
		hsp = -8;
		x = x + hsp;
		if (x < 356){x = 356; hsp = 0;}
	}
	
//Vertical Collision
	if(!((global.GhostActive == 1 || global.player_revive_mode == 1 || global.NinjaActive == 1) && sign(vsp) < 0))
	{
		if (place_meeting(x,y+vsp,oWall) && global.UltimateActive == 0)
		{
			while(!place_meeting(x,y+sign(vsp),oWall))
			{
				y = y + sign(vsp);
			}

			vsp = 0;
		}
	}
	
	if(!(global.UltimateActive == 1 && sign(vsp) < 0))
	{
	if (place_meeting(x,y+vsp,oWallUlt))
	{
		while(!place_meeting(x,y+sign(vsp),oWallUlt))
		{
			y = y + sign(vsp);
		}

		vsp = 0;
	}
	}
	
	if (place_meeting(x,y+vsp,oCeil))
	{
		while(!place_meeting(x,y+sign(vsp),oCeil))
		{
			y = y + sign(vsp);
		}
		if(vsp < 0){vsp = 0;}
	}
	y = y + vsp;

	//Animation
	if (vsp == 0)
	{sprite_index = sAlienUFOHover;}
	else
	{sprite_index = sAlienUFOStable;}
		
if(global.AUG_CantFallFloor == 1 || global.UltimateActive == 1)
{
	if(y > 1080)
	{
		y = 1080;
		jump_counter = 0;
		dash_counter = 0;
	}
}

if(global.player_revive_mode == 1)
{
if(y > 1080){y = 1080;}
jump_counter = 0;
dash_counter = 0;
if(revive_timer == 180){flash = 180;}
if(revive_timer > 0){revive_timer--;}
if(revive_timer == 0 && !place_meeting(x,y,oWall)){revive_timer = 180;global.player_revive_mode = 0;}
}

if (y > (1230 + 100*global.AUG_DareDevil1 + (250*max(global.uDareDevil,global.SS4SuperSaiyan)))){global.player_death = 1;}
if (x < (-125 - 100*global.AUG_DareDevil1 - (250*max(global.uDareDevil,global.SS4SuperSaiyan)))){global.player_death = 1;}

if(global.player_death == 1)
{
	audio_play_sound(SoundPlayerDeath,10,false);
	sound_play = irandom(2);
	switch(sound_play)
	{
		case 0:
		audio_play_sound(SoundAlienDeath1,10,false,.5);
		break;
	
		case 1:
		audio_play_sound(SoundAlienDeath2,10,false,.5);
		break;
	
		case 2:
		audio_play_sound(SoundAlienDeath3,10,false,.5);
		break;
	}
	
	i = 0;	
	repeat(16)
		{instance_create_layer(x,y,"Player",oPlayerDeath,
			{direction : pi/8*i});
			i++;
		}
	i = 0;
	instance_destroy();
}

if(global.NinjaActive == 1)
{
	global.NinjaTimer--;
	global.NinjaTimer = max(0,global.NinjaTimer);
}
}

if(global.AlienTimer == 0)
{
	global.AlienUFOActive = 0;
	instance_destroy(oButtonShoot);
	instance_destroy(oButtonUFO_Up);
	instance_destroy(oButtonUFO_Down);
	instance_destroy(oShootTap);
	instance_destroy(oUFOUpTap);
	instance_destroy(oUFODownTap);

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

	instance_create_layer(x,y,"Player",oPlayerAlien);
	instance_create_layer(x,y,"Laser",oUFOExit);
	global.player_revive_mode = 1;
	if(instance_exists(oPlayerAlien))
	{oPlayerAlien.flash = 180;}
	instance_destroy();
}