/// @description Insert description here
// You can write your code in this editor
if(MeterUpgrade == "Ultimate")
{image_alpha = 0;}

if(MeterUpgrade == "STX")
{image_alpha = 0;}

if(MeterUpgrade == "GoLong")
{image_alpha = 0;}

UnstoppableMeter = 0;
UnstoppableSprite = 0;
SpriteTimer = 0;

global.UltimateTimer = 60;
global.UltimateActive = 0;
global.UltimateComplete = 0;
global.UltimateCounter = 0;
global.UltimateStart = 0;
UltimateSpriteTimer = 0;
UltimateSprite = 2;

global.GhostReadyTimer = 7*60;
global.GhostActive = 0;
GhostSpriteTimer = 0;
GhostSprite = 2;

global.TimeDistortTimer = 0;
global.TimeDistortActive = 0;
global.TimeDistortUsed = 0;
TDSpriteTimer = 0;
TDSprite = 2;

global.FlashyTimer = 180;
global.FlashyActive = 0;

global.AlienTimer = 0;
global.AlienUFOActive = 0;
AlienSpriteTimer = 0;
AlienSprite = 2;