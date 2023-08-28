//Define Sprite from Character Selection
global.player_death = 0;

//Initialize Movement
hsp = 0;
vsp = 0;
grv = 1.05 + .12*global.uDareDevil + .12*global.uNimbleFighter + .12*global.uTMNT_Red;

//Intialize Various Variables
controller_lockout = 0;
jump_counter = 0;

//Intialize Dash
global.dash_mode = 0;
dash_timer = 0;
dash_timer_max = 16-2*global.uDareDevil-2*global.uNimbleFighter-2*global.uTMNT_Red;
dash_counter = 0;

//Initialize Controls
key_jump_start = 0;
key_jump = 0;
key_transform = 0;
transform_start = 0;
transform_mode = 0;

flash = 0;
Fighter_Sound_Pick = 0;

if(global.uHardMode == 1)
{
	jump_counter_max = 1;
	dash_counter_max = 1;
}
else if (global.uHeroic == 1 || global.uSuperman == 1)
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
ss4_shoot_lockout = 0;
ss4_shoot_cap = 0;
shoot_cap_timer1 = 0;
shoot_cap_timer2 = 0;

global.SS4SuperSaiyan = 0;