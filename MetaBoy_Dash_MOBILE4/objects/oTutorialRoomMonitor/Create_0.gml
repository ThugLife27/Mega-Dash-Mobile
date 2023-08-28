/// @description Insert description here
// You can write your code in this editor
os_set_orientation_lock(true,false);

global.difficulty = 0;
ResetUpgrades();
ResetAugments();

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

GoLongMult = 0;
GoLongPoints = 0;

global.roomspeed = 8;

global.multiplier = 1;
global.multiplier_floor = 1;


instance_create_layer(1500, 35, "Screens",oMultiplier);

global.multiplier_max = 10;

global.room_create_count = 2400;

global.player_death = 0;
death_timer = 30;

global.WallKickCount = 0;
global.UltScore = 0;
global.player_revive_mode = 0;

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

global.OverheatMax = 300;
global.Overheat = global.OverheatMax;

global.MapSelection = "Layer 2";
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

with(oWallTutorial)
{sprite_index = oTutorialRoomMonitor.SpriteTile;}


