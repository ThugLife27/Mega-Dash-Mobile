if(global.pause == 0)
{

//Get Player Input
if (controller_lockout == 1)
	{
		key_dash_start = 0;
		key_jump_start = 0;
		key_jump = 0;
	}	
else if (global.UltimateActive == 0)
{
	key_dash_start = oDashTap.DashTap;
	key_jump_start = oJumpTap.JumpTapStart;
	key_jump = oJumpTap.JumpTap;
	//key_ss4laser = max(keyboard_check_pressed(vk_down),gamepad_button_check_pressed(0,gp_shoulderrb));
}
else
{
	key_jump_start = oJumpTap.JumpTapStart;
	key_jump = oJumpTap.JumpTap;
}

//if(global.UltimateActive == 0){key_ult = max(keyboard_check_pressed(vk_up),gamepad_button_check_pressed(0,gp_face4));}

if(global.dash_mode == 1 && global.uNimbleFighter == 1)
{
	key_jump_start = oJumpTap.JumpTapStart;
	key_jump = oJumpTap.JumpTap;
}

if(global.uGhost == 1 && global.GhostReadyTimer >= (7*60) && global.gamestart == 1 && global.UltimateActive == 0)
{
	//key_ghost = max(keyboard_check_pressed(vk_enter),gamepad_button_check_pressed(0,gp_face2));
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
 
if((global.uSuperSaiyan == 1 || global.uUltimate == 1) && global.UltimateCounter >= 1 && global.gamestart == 1 && global.UltimateComplete == 0 && global.UltimateActive == 0 && key_ult == 1)
{
	global.UltimateStart = 1;
	shoot_lockout = 45;
	oUltButton.flash = 20;
	time = 50; //milliseconds
	amplitude = 100; //255 is the max
	androidVibrate(time,amplitude);
} 
 
 vsp = vsp + grv + .12*global.SS4SuperSaiyan;
	
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
		
	//Dash
	// Enter Dash Mode, lockout jump and re-dash
	if (key_dash_start == 1 && dash_counter < dash_counter_max && global.dash_mode == 0 && (!place_meeting(x+1,y,oWall) || global.GhostActive == 1 || global.NinjaActive == 1) && global.UltimateActive == 0)
	{
		time = 50; //milliseconds
		amplitude = 100; //255 is the max
		androidVibrate(time,amplitude);
		global.dash_mode = 1;
		controller_lockout = 1;
		sprite_index = global.CharacterKickSkin;
		image_index = 0;
		image_speed = 1.1 + .1*global.uNimbleFighter + .1*global.SS4SuperSaiyan + .05*global.AUG_JumpKickUp;
		dash_timer = 0;
		if(x >= 356){hsp = 0;}
		
		if(global.uFlashy == 1 && global.gamestart == 1)
		{
		flashy_counter++;
		if(flashy_counter == 2 && global.FlashyTimer == 180){global.FlashyActive = 1;flashy_counter = 0;}
		else if(flashy_counter == 2){flashy_counter = 1;}
		}
		
		if(global.uKen == 1 && global.gamestart == 1)
		{
		ken_counter++;
		if(ken_counter == 2)
		{
			global.multiplier++; 
			if(global.multiplier > global.multiplier_max){global.multiplier = global.multiplier_max;}
			ken_counter = 0;
		}
		}
	}
	
	//Execute Dash
	if (global.dash_mode == 1)
	{
		vsp = 0;
		
		if (floor(image_index) <= 6)
		{
			if(x < 75){hsp = 9;}
			else if(x < 150){hsp = 7;}
			else if(x < 300){hsp = 4;}
			else if(x < 356){hsp = 2;}
		}
		
		if (floor(image_index) == 6)
		{
			if(global.CharacterRunSkin != sMinotaurRun)
			{
				if(!audio_is_playing(SoundFighterJump2))
				{audio_play_sound(SoundFighterJump2,10,false,.6);}
			}
			else if(!audio_is_playing(SoundMinotaurJump2))
			{
				audio_play_sound(SoundMinotaurJump2,10,false,.7);
			}
		}
		if (floor(image_index) == 7 && dash_timer <= dash_timer_max/2) 
			{
				image_speed = 0;
				hsp = 13*cos(dash_timer*pi/dash_timer_max);
				dash_timer++;
			}
		
		if(dash_timer > dash_timer_max/2 && x < 356)
		{hsp = 13;}
		
		if (dash_timer > dash_timer_max/2 && x >= 356)
			{
				sprite_index = global.CharacterRunSkin; 
				image_index = 10;
				if(dash_timer > dash_timer_max){dash_timer = dash_timer_max;}
				hsp = (13+12*global.uDareDevil+12*global.uNimbleFighter+12*global.SS4SuperSaiyan+6*global.AUG_JumpKickUp)*cos(dash_timer*pi/dash_timer_max);
				dash_timer++;	
			}
		
		x = x + hsp;
			
		if (hsp < 0 && x < 356)
		{
			x = 356;
			global.dash_mode = 0;
			dash_timer = 0;
			hsp = 0;
			controller_lockout = 0;
			dash_counter++;
			jump_counter--;
			if(jump_counter < 0){jump_counter = 0;}
		}
	}
		

	//Jump
	if (key_jump_start == 1 && jump_counter < jump_counter_max)
	{ 
		if(global.dash_mode = 1)
		{
			global.dash_mode = 0;
			dash_timer = 0;
			controller_lockout = 0;
			dash_counter++;
			jump_counter--;
			if(jump_counter < 0){jump_counter = 0;}
		}
		time = 50; //milliseconds
		amplitude = 100; //255 is the max
		androidVibrate(time,amplitude);
		
		vsp = -31 - 4*global.uDareDevil - 4*global.uNimbleFighter - 4*global.AUG_JumpKickUp - 4*global.SS4SuperSaiyan - 2*global.uHulk;
		jump_counter = jump_counter + 1;
		Fighter_Sound_Pick = irandom(1);
		if(global.CharacterRunSkin != sMinotaurRun)
		{
			if (Fighter_Sound_Pick == 0){audio_play_sound(SoundFighterJump1,10,false,.6);}
			else {audio_play_sound(SoundFighterJump3,10,false,.6);}
		}
		else
		{
			if (Fighter_Sound_Pick == 0){audio_play_sound(SoundMinotaurJump1,10,false,1.1);}
			else {audio_play_sound(SoundMinotaurJump3,10,false,1.1);}
		}
	}
	
	if (vsp < 0 && key_jump == 0)
	{vsp = 0;}

	//Horizontal Collision
if(global.GhostActive == 1 && global.GhostReadyTimer == 0 && !place_meeting(x,y,oWall))
{global.GhostActive = 0;}

if(global.NinjaActive == 1 && global.NinjaTimer == 0 && !place_meeting(x,y,oWall))
{
	global.NinjaActive = 0;
	global.NinjaTimer = 60;	
}

if (place_meeting(x+1,y,oWall) && global.uDemolisher == 0 && global.uHulk == 0 && global.GhostActive == 0 && global.NinjaActive == 0 && global.player_revive_mode == 0)
	{
		//If dashing and hit wall, exit dash mode
		if(global.dash_mode = 1)
		{
			global.dash_mode = 0; 
			dash_timer = 0;
			controller_lockout = 0;
			dash_counter++;
			jump_counter--;
			if(jump_counter < 0){jump_counter = 0;}
		}
	}

if (place_meeting(x+1,y,oWall) && global.UltimateActive == 0 && ((global.uDemolisher == 0 && global.uHulk == 0) || global.dash_mode == 0 || hsp < 0) && global.GhostActive == 0 && global.NinjaActive == 0 && global.player_revive_mode == 0)
	{
	while(place_meeting(x,y,oWall)){x--;}
	hsp = global.hsp_oWall;
	x = x + global.hsp_oWall;
	}
else if (x < 356 && global.dash_mode == 0)
	{
		hsp = 8 + 8*max(global.uDareDevil,global.SS4SuperSaiyan);
		x = x + hsp;
		if (x > 356){x = 356; hsp = 0;}
	}
else if (x > 356 && global.dash_mode == 0)
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
			if(sign(vsp) == 1 || max(global.uDareDevil,global.uNimbleFighter,global.SS4SuperSaiyan) == 1)
			{
			jump_counter = 0;
			dash_counter = 0;
			}
			if(sign(vsp) == 1){flashy_counter = 0;ken_counter = 0;}
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
		if(sign(vsp) == 1 || max(global.uDareDevil,global.uNimbleFighter,global.SS4SuperSaiyan) == 1)
		{
		jump_counter = 0;
		dash_counter = 0;
		}

		if(sign(vsp) == 1){flashy_counter = 0;ken_counter = 0;}
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
	if (!place_meeting(x,y+1,oWall) && !place_meeting(x,y+1,oWallUlt) && global.dash_mode == 0)
	{
		sprite_index = global.CharacterRunSkin;
		image_speed = 0;
		if (sign(vsp)>0) 
		{image_index = 4;} 
		else 
		{image_index=10;}
	}
	else if (global.dash_mode == 0)
	{
		sprite_index = global.CharacterRunSkin;
		image_speed = 1;
	}
		
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
	i = 0;
	audio_play_sound(SoundPlayerDeath,10,false);
	
	if(global.CharacterRunSkin != sMinotaurRun)
	{audio_play_sound(SoundPlayerScream,10,false,.6);}
	else{audio_play_sound(SoundMinotaurScream,10,false,2);}
		
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