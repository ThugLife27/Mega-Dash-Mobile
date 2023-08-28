/// @description Insert description here
// You can write your code in this editor
global.PlayerProfile.Stats.NumRounds++;

global.gamestart = 0;
game_start_timer = 0;

global.BossBattleStart = 0;
global.BossBattleActive = 0;
global.BossBattleComplete = 0;
global.BossSelect = sProbert;

meter_count = 1;
button_count = 1;

global.score = 0;
global.scoretimepassage = 0;
global.scorebonus = 0;
global.scoretotal = 0;

oBrowserScaling.scoretotal = 0;
oBrowserScaling.scoretotal_new = 0;

GoLongMult = 0;
GoLongPoints = 0;

global.roomspeed = 6;

if(global.uHardMode == 1)
{global.multiplier = 5;global.multiplier_floor = 5;}
else if(global.uHyperDrive == 1)
{global.multiplier = 3; global.multiplier_floor = 3;}
else
{global.multiplier = 1;global.multiplier_floor = 1;}

global.multiplier_floor = global.multiplier_floor + global.AUG_FloorMult1*2;
global.multiplier_floor = global.multiplier_floor + global.AUG_FloorMult2*5;
global.multiplier = global.multiplier_floor;

instance_create_layer(1500, 35, "Screens",oMultiplier);

if(global.uMultiplier20 == 1)
{global.multiplier_max = 20;}
else{global.multiplier_max = 10;}

global.multiplier_max = global.multiplier_max + 2*global.AUG_MaxMult1;
global.multiplier_max = global.multiplier_max + 5*global.AUG_MaxMult2;
global.multiplier_max = global.multiplier_max + 25*global.AUG_MaxMult25;
global.multiplier_max = global.multiplier_max + 5*global.uTMNT_Blue;
global.multiplier_max = min(50,global.multiplier_max);

if(global.multiplier_floor > global.multiplier_max)
{global.multiplier_floor = global.multiplier_max;}

global.room_create_count = 2400;

global.player_death = 0;
death_timer = 150;

if(global.uCatStart == 1)
{
	instance_create_layer(2944,1088-64,"Enemies",oCat);
	instance_create_layer(3456,1088-64,"Enemies",oCat);
}

global.MulliganCounter = 0;
if(global.uOPOGs == 1 || global.AUG_Mulligan == 1)
{global.MulliganCounter = 1;}

//if(global.Character == oPlayerSTX)
//{instance_create_layer(600,35+45*(meter_count-1),"Screens",oMeter,
//{MeterUpgrade : "STX"});
//meter_count++;}

//if(global.Character == oPlayerJet)
//{instance_create_layer(600,35+45*(meter_count-1),"Screens",oMeter,
//{MeterUpgrade : "JetPack"});
//meter_count++;}

if(global.Character == oPlayerAlien)
{
	instance_create_layer(680,35+45*(meter_count-1),"Screens",oMeter,
	{MeterUpgrade : "Alien"});
	meter_count++;
}

if(global.uSuperSaiyan == 1 || global.uUltimate == 1)
{
	instance_create_layer(680,35+45*(meter_count-1),"Screens",oMeter,
	{MeterUpgrade : "Ultimate"});
	meter_count++;

	instance_create_layer(1850,170,"Screens",oUltButton);
	button_count++;
}

if(global.uUnstoppable == 1)
{instance_create_layer(680,35+45*(meter_count-1),"Screens",oMeter,
{MeterUpgrade : "Unstoppable"});
meter_count++;}

if(global.uTimeDistort == 1)
{
	instance_create_layer(680,35+45*(meter_count-1),"Screens",oMeter,
	{MeterUpgrade : "Time Distort"});
	meter_count++;
	
	instance_create_layer(1850,170+200*(button_count-1),"Screens",oTimeDistortButton);
	button_count++;
}

if(global.uGhost == 1)
{
	instance_create_layer(680,35+45*(meter_count-1),"Screens",oMeter,
	{MeterUpgrade : "Ghost"});
	meter_count++;
	
	instance_create_layer(1850,170+200*(button_count-1),"Screens",oGhostButton);
	button_count++;
}

if(global.uFlashy == 1)
{instance_create_layer(680,35+45*(meter_count-1),"Screens",oMeter,
{MeterUpgrade : "Flashy"});
meter_count++;}

if(global.uGoLong == 1)
{instance_create_layer(680,35+45*(meter_count-1),"Screens",oMeter,
{MeterUpgrade : "GoLong"});}

global.WallKickCount = 0;
global.UltScore = 0;
global.player_revive_mode = 0;
global.Boss_AutoSpawn--;
global.Boss_AutoSpawn = max(global.Boss_AutoSpawn,0);

global.UltimateTimer = 60;
global.UltimateActive = 0;
global.UltimateComplete = 0;
global.UltimateCounter = 0;
global.UltimateStart = 0;
global.UltimateNumber = 0;
UltimateSpriteTimer = 0;
UltimateSprite = 2;
global.BossSpawned = 0;

global.GhostReadyTimer = 7*60;
global.GhostActive = 0;
global.NinjaActive = 0;
GhostSpriteTimer = 0;
GhostSprite = 2;

global.TimeDistortTimer = 0;
global.TimeDistortActive = 0;
global.TimeDistortUsed = 0;
TDSpriteTimer = 0;
TDSprite = 2;

global.FlashyTimer = 180;
global.FlashyActive = 0;

global.player_death = 0;

global.dash_mode = 0;

//Init of Upgrade Stuff
global.NinjaActive = 0;
global.NinjaTimer = 60;
global.GhostActive = 0;
global.GhostReadyTimer = 7*60;
global.TimeDistortActive = 0;
global.TimeDistortTimer = 0;
global.PlayerUnstoppable = 0;
global.wallflash = 0;
global.SSKickCounter = 0;
global.UltimateActive = 0;
global.SS4SuperSaiyan = 0;

Sprite_Set = global.MapSelection;

switch(Sprite_Set)
{
    //Layer 2
	case "Layer 2":
        Sprite1 = sSewer1;
		Sprite2 = sSewer2;
		Sprite3 = sSewer3;
		Sprite4 = sSewer4;
		SpriteBackground = sSewerBackground;
		SpriteOverlay = sSewerOverlay;
		SpriteOverlayAlpha = .25;
		SpriteTile = sWallSewer;		
    break;
	
	//General Chat
	case "General Chat":
        Sprite1 = sCity1;
		Sprite2 = sCity2;
		Sprite3 = sCity3;
		Sprite4 = sCity4;
		SpriteBackground = sCityBackground;
		SpriteOverlay = sCityOverlay;
		SpriteOverlayAlpha = .4;
		SpriteTile = sWallCity;	
    break;
	
	//Gaia's Lab
	case "Gaia's Lab":
        Sprite1 = sLab1;
		Sprite2 = sLab2;
		Sprite3 = sLab3;
		Sprite4 = sLab4;
		SpriteBackground = sLabBackground;
		SpriteOverlay = sLabOverlay;
		SpriteOverlayAlpha = .1;
		SpriteTile = sWallLab;
    break;
	
	//Rug Pull
	case "Rug Pull":
        Sprite1 = sRugPull1;
		Sprite2 = sRugPull2;
		Sprite3 = sRugPull3;
		Sprite4 = sRugPull4;
		SpriteBackground = sRugPullBackground;
		SpriteOverlay = sRugPullOverlay;
		SpriteOverlayAlpha = .2;
		SpriteTile = sWallRugPull;
    break;
	
	//Burn Wallet
	case "Burn Wallet":
        Sprite1 = sHell1;
		Sprite2 = sHell2;
		Sprite3 = sHell3;
		Sprite4 = sHell4;
		SpriteBackground = sHellBackground;
		SpriteOverlay = sHellOverlay;
		SpriteOverlayAlpha = .3;
		SpriteTile = sWallHell;
    break;
	
	//Satoshi's Realm
	case "Satoshi's Realm":
        Sprite1 = sCloud1;
		Sprite2 = sCloud2;
		Sprite3 = sCloud3;
		Sprite4 = sCloud4;
		SpriteBackground = sCloudBackground;
		SpriteOverlay = sCloudOverlay;
		SpriteOverlayAlpha = 0;
		SpriteTile = sWallCloud;
    break;
}


for(var i = 0; i < 3; i += 1)
{
	instance_create_layer(2500/2+i*2500,1080/2,"WallPaper",oDashRoomBackground,
	{sprite_index : Sprite1});
}

for(var i = 0; i < 3; i += 1)
{
	instance_create_layer(2500/2+i*2500,1080/2,"WallPaper2",oDashRoomBackground,
	{sprite_index : Sprite2});
}

for(var i = 0; i < 3; i += 1)
{
	instance_create_layer(2500/2+i*2500,1080/2,"WallPaper3",oDashRoomBackground,
	{sprite_index : Sprite3});
}

for(var i = 0; i < 3; i += 1)
{
	instance_create_layer(2500/2+i*2500,1080/2,"WallPaper4",oDashRoomBackground,
	{sprite_index : Sprite4});
}

instance_create_layer(1920/2,1080/2,"RoomOverlay",oDashRoomBackground,
	{
		sprite_index : SpriteOverlay,
		image_alpha : SpriteOverlayAlpha
	});
	
lay_id = layer_get_id("Background");
back_id = layer_background_get_id(lay_id);
layer_background_sprite(back_id, SpriteBackground);

with(oWall)
{sprite_index = oDashRoomMonitor.SpriteTile;}


