global.player_death = 0;

//Initialize Movement
hsp = 0;
vsp = 0;
grv = 1.05 + .12*global.uDareDevil + .12*global.uNimbleFighter + .06*global.AUG_JumpKickUp;

//Intialize Various Variables
controller_lockout = 0;
jump_counter = 0;

//Initialize Controls
key_jump_start = 0;
key_jump = 0;
key_hover = 0;
key_hover_start = 0;
hover_mode = 0;
hover_counter = 0;
key_ghost = 0;
key_timedistort = 0;
key_ult = 0;

flash = 0;
Fighter_Sound_Pick = 0;

if(global.uHardMode == 1)
{
	jump_counter_max = 1;
	hover_counter_max = 1;
}
else if (global.uHeroic == 1 || global.difficulty < 2)
{
	jump_counter_max = 10000;
	hover_counter_max = 10000;
}
else
{
	jump_counter_max = 2;
	hover_counter_max = 2;
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
global.dash_mode = 0;

revive_timer = 180;

global.UltimateActive = 0;
shoot_lockout = 0;
shot_lockout = 0;
charge_mode = 0;
charge_timer = 0;

instance_create_layer(x,y,"Boss",oSTXWings);

if(global.AUG_Overshield == 1)
{instance_create_layer(x,y,"Laser",oPlayerOvershield);}