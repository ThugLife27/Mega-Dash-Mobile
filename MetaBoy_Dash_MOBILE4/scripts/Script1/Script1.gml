// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function ResetUpgrades()
{
//cartridges
global.uCatStart = 0;
global.uBlessed = 0;
global.uDemolisher = 0;
global.uTimeDistort = 0;
global.uGhost = 0;
global.uGuardianAngle = 0;
global.uBonusRound = 0;
global.uDareDevil = 0;
global.uUnstoppable = 0;
global.uEasyCats = 0;
global.uHeroic = 0;
global.uOPOGs = 0;
global.uLuckyDice = 0;
global.uGoLong = 0;
global.uEnemyOverload = 0;
global.uSlowandSteady = 0;
global.uHyperDrive = 0;
global.uHardMode = 0;
global.uMultiplier20 = 0;
global.uNimbleFighter = 0;
global.uSTXCollector = 0;
global.uFlashy = 0;
global.uBossBait = 0;
global.uUltimate = 0;
global.uSTXShotWall = 0;
global.uSTXSpreadShot = 0;
global.uSTXWallBreak = 0;

global.uGuardianAngelAvail = 0;

if(room != TutorialRoom)
{
	if(global.AUG_9Lives == 1)
	{
		global.uGuardianAngle = 1;
		global.uGuardianAngelAvail = 0;
	}
	
	if(global.AUG_4thRound == 1)
	{
		for (i = 0; i < array_length(global.UpgradeArray); i++)
		{
			 if (global.UpgradeArray[i] == 6)
			 {array_delete(global.UpgradeArray,i,1);}
		}
	}
}

global.ReplayAvailable = 1;

global.CatScaling = 0;
global.Cat9LivesCount = 0;

global.UpgradeArray = [];
global.UpgradeChoiceArray = [];

i = 0;
for (i = 0; i < 24; i += 1)
{
	global.UpgradeArray[i] = i;
}

//Delete Heroic, Hard Mode, and Hyper Drive on Normal Mode
if(global.difficulty == 1)
{
	for (i = 0; i < array_length(global.UpgradeArray); i++)
		{
			 if (global.UpgradeArray[i] == 10)
			 {array_delete(global.UpgradeArray,i,1);}
		}
	
	for (i = 0; i < array_length(global.UpgradeArray); i++)
		{
			 if (global.UpgradeArray[i] == 16)
			 {array_delete(global.UpgradeArray,i,1);}
		}
	
	for (i = 0; i < array_length(global.UpgradeArray); i++)
		{
			 if (global.UpgradeArray[i] == 17)
			 {array_delete(global.UpgradeArray,i,1);}
		}
}

if(global.Character = oPlayerSTX)
{
		//delete flashy
		for (i = 0; i < array_length(global.UpgradeArray); i++)
		{
				if (global.UpgradeArray[i] == 21)
				{array_delete(global.UpgradeArray,i,1);}
		}
			
		//delete demolisher
		for (i = 0; i < array_length(global.UpgradeArray); i++)
		{
				if (global.UpgradeArray[i] == 2)
				{array_delete(global.UpgradeArray,i,1);}
		}
}


//EXTRAS
global.ProbertDefeated = 0;
global.ThuglifeDefeated = 0;
global.AdamDefeated = 0;
global.FrolfDefeated = 0;
global.SatoshiDefeated = 0;

global.SSKickUnlock = 0;
global.LuckyDiceUnlock = 0;
global.DemolisherUnlock = 0;
global.HardModeUnlock = 0;
global.SS4SuperSaiyan = 0;
global.Rerolls = 0;

//Skins
global.uBaseFighter = 0;
global.uKen = 0;
global.uTMNT_Red = 0;
global.uTMNT_Blue = 0;
global.uTMNT_Purple = 0;
global.uGoku = 0;
global.uSuperSaiyan = 0;
global.uSS4 = 0;
global.uSuperman = 0;
global.uHulk = 0;
global.uTMNT_Orange = 0;
global.uGoldenFighter = 0;
global.uBritBoy = 0;
}