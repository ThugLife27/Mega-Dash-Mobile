//Define Sprite from Character Selection
global.player_death = 0;

//Initialize Movement
hsp = 0;
vsp = 0;
grv = 1.05 + .1*global.uDareDevil + .1*global.uNimbleFighter + .1*global.uTMNT_Red;

//Intialize Various Variables
controller_lockout = 0;
jump_counter = 0;

//Initialize Controls
key_jump_start = 0;
key_jump = 0;
key_hover = 0;

flash = 0;


global.dash_mode = 0;

//if (global.uHeroic ==1)
//{
//	jump_counter_max = 10000;
//	dash_counter_max = 10000;
//}


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
missile_shoot_lockout = 0;
shoot_cap = 0;
shoot_cap_timer1 = 0;
shoot_cap_timer2 = 0;