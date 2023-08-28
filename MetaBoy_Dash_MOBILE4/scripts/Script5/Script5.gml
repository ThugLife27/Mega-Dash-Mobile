// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function InitSkins(){
	
for (i = 0; i < 13; i += 1)
{global.FighterSkins[i] = sCharLocked;}

global.FighterSkins[0] = sFighterRun;
global.JetChar = 0;
global.STXBoy = 0;
global.BTCBoy = 0;
global.CartUpgrades = [27,27,27,27];
global.Maps = [1,0,0,0,0,0];
//global.Pets = [sCharLocked,sCharLocked,sCharLocked,sCharLocked,sCharLocked,sCharLocked];

global.BorderCollieUnlock = 0;
global.DalmatianUnlock = 0;
global.CatUnlock = 0;
global.ChihuauaUnlock = 0;
global.RetrieverUnlock = 0;
global.MountainDogUnlock = 0;

for(i = 0; i < 27; i += 1)
	{
	global.CartsUsed[i] = 0;
	}
global.CartsUsed[2] = 1;
global.CartsUsed[10] = 1;
global.CartsUsed[22] = 1;
global.CartsUsed[23] = 1;

}

function UnlockAllSkins(){
	
//global.FighterSkins = [sFighterRun,sKenRun,sTMNTRedRun,sTMNTBlueRun,sTMNTPurpleRun,sGokuRun,sFighterRunSaiyan,sFighterRunSS4,sSupermanRun,sHulkRun,sTMNTOrangeRun,sBritRun,sCharLocked];
//global.JetChar = 1;
//global.CartUpgrades = [22,10,2,23];
//global.Pets = [sCat, sBorderCollie, sChihuaua, sMountainDog, sDalmatian, sRetriever];
}

//function InitControls(){
//global.controlsettings = [ord("Z"),ord("X"),vk_enter,vk_up,vk_down,gp_face1,gp_face3,gp_face2,gp_face4,gp_shoulderr];
//global.keyJump = ord("Z");
//global.keyKick = ord("X");
//global.keyAbility = vk_enter;
//global.keyUlt = vk_up;
//global.keyProjectiles = vk_down;

//global.contJump = gp_face1;
//global.contKick = gp_face3;
//global.contAbility = gp_face2; 
//global.contUlt = gp_face4;
//global.contProjectiles = gp_shoulderr;
//}