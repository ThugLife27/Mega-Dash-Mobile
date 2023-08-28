//Define Sprite from Character Selection

global.player_death = 0;

//Initialize Movement
hsp = 0;
vsp = 0;
grv = 1.05 + .12*global.uDareDevil + .12*global.uNimbleFighter  + .06*global.AUG_JumpKickUp;

//Intialize Various Variables
controller_lockout = 0;
jump_counter = 0;

//Intialize Dash
global.dash_mode = 0;
dash_timer = 0;
dash_timer_max = 16-2*global.uDareDevil-2*global.uNimbleFighter-1*global.AUG_JumpKickUp;
dash_counter = 0;

//Initialize Controls
key_jump_start = 0;
key_jump = 0;
key_ghost = 0;
key_timedistort = 0;
key_ult = 0;

flash = 40;
Fighter_Sound_Pick = 0;

if(global.uHardMode == 1)
{
	jump_counter_max = 1;
	dash_counter_max = 1;
}
else if (global.uHeroic == 1 || global.difficulty < 2)
{
	jump_counter_max = 10000;
	dash_counter_max = 10000;
}
else
{
	jump_counter_max = 2;
	dash_counter_max = 2;
}

//Init of Upgrade Stuff
global.NinjaActive = 0;
global.NinjaTimer = 60;
global.GhostActive = 0;
global.GhostReadyTimer = 7*60;
global.TimeDistortActive = 0;
global.TimeDistortTimer = 0;
global.PlayerUnstoppable = 0;
global.wallflash = 0;

revive_timer = 180;
flashy_counter = 0;
ken_counter = 0;

global.SSKickCounter = 0;
global.UltimateActive = 0;
shoot_lockout = 0;

global.SS4SuperSaiyan = 0;

if(global.AUG_Overshield == 1)
{instance_create_layer(x,y,"Laser",oPlayerOvershield);}