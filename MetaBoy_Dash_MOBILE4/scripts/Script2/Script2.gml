// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function ApplyUpgrade(argument0)
{

switch(argument0)
{
	case 0:
	global.uCatStart = 1;
	global.CartsUsed[0] = 1;
	break
	
	case 1:
	global.uBlessed = 1;
	global.CartsUsed[1] = 1;
	break
	
	case 2:
	global.uDemolisher = 1;
	global.CartsUsed[2] = 1;
	break
	
	case 3:
	global.uTimeDistort = 1;
	global.CartsUsed[3] = 1;
	
	//delete ghost
	for (i = 0; i < array_length(global.UpgradeArray); i++)
	{
		 if (global.UpgradeArray[i] == 4)
		 {array_delete(global.UpgradeArray,i,1);}
	}
	
	break
	
	case 4:
	global.uGhost = 1;
	global.CartsUsed[4] = 1;
	
	//delete time distort
	for (i = 0; i < array_length(global.UpgradeArray); i++)
	{
		 if (global.UpgradeArray[i] == 3)
		 {array_delete(global.UpgradeArray,i,1);}
	}
	break
	
	case 5:
	global.uGuardianAngle = 1;
	global.uGuardianAngelAvail++;
	global.CartsUsed[5] = 1;
	break
	
	case 6:
	global.uBonusRound = 1;
	global.CartsUsed[6] = 1;
	break
	
	case 7:
	global.uDareDevil = 1;
	global.CartsUsed[7] = 1;
	break
	
	case 8:
	global.uUnstoppable = 1;
	global.CartsUsed[8] = 1;
	break
	
	case 9:
	global.uEasyCats = 1;
	global.CartsUsed[9] = 1;
	break
	
	case 10:
	global.uHeroic = 1;
	global.CartsUsed[10] = 1;
	//delete Hard Mode
	for (i = 0; i < array_length(global.UpgradeArray); i++)
	{
		 if (global.UpgradeArray[i] == 17)
		 {array_delete(global.UpgradeArray,i,1);}
	}
	
	//delete Hyper Drive
	for (i = 0; i < array_length(global.UpgradeArray); i++)
	{
		 if (global.UpgradeArray[i] == 16)
		 {array_delete(global.UpgradeArray,i,1);}
	}
	break
		
	case 11:
	global.uOPOGs = 1;
	global.CartsUsed[11] = 1;
	break
	
	case 12:
	global.uLuckyDice = 1;
	global.CartsUsed[12] = 1;
	break
	
	case 13:
	global.uGoLong = 1;
	global.CartsUsed[13] = 1;
	break
	
	case 14:
	global.uEnemyOverload = 1;
	global.CartsUsed[14] = 1;
	break
	
	case 15:
	global.uSlowandSteady = 1;
	global.CartsUsed[15] = 1;
	//delete Hyper Drive
	for (i = 0; i < array_length(global.UpgradeArray); i++)
	{
		 if (global.UpgradeArray[i] == 16)
		 {array_delete(global.UpgradeArray,i,1);}
	}
	break
	
	case 16:
	global.uHyperDrive = 1;
	global.CartsUsed[16] = 1;
	//delete Slow
	for (i = 0; i < array_length(global.UpgradeArray); i++)
	{
		 if (global.UpgradeArray[i] == 15)
		 {array_delete(global.UpgradeArray,i,1);}
	}
	
	//delete Heroic
	for (i = 0; i < array_length(global.UpgradeArray); i++)
	{
		 if (global.UpgradeArray[i] == 10)
		 {array_delete(global.UpgradeArray,i,1);}
	}
	break
	
	case 17:
	global.uHardMode = 1;
	global.CartsUsed[17] = 1;
	//delete Heroic
	for (i = 0; i < array_length(global.UpgradeArray); i++)
	{
		 if (global.UpgradeArray[i] == 10)
		 {array_delete(global.UpgradeArray,i,1);}
	}
	
	//delete Flashy
	for (i = 0; i < array_length(global.UpgradeArray); i++)
	{
		 if (global.UpgradeArray[i] == 21)
		 {array_delete(global.UpgradeArray,i,1);}
	}
	break
	
	case 18:
	global.uMultiplier20 = 1;
	global.CartsUsed[18] = 1;
	break
	
	case 19:
	global.uNimbleFighter = 1;
	global.CartsUsed[19] = 1;
	break
	
	case 20:
	global.uSTXCollector = 1;
	global.CartsUsed[20] = 1;
	break
		
	case 21:
	global.uFlashy = 1;
	global.CartsUsed[21] = 1;
	//delete Hard Mode
	for (i = 0; i < array_length(global.UpgradeArray); i++)
	{
		 if (global.UpgradeArray[i] == 17)
		 {array_delete(global.UpgradeArray,i,1);}
	}
	break
	
	case 22:
	global.uBossBait = 1;
	global.CartsUsed[22] = 1;
	break
	
	case 23:
	global.uUltimate = 1;
	global.CartsUsed[23] = 1;
	break
}
}