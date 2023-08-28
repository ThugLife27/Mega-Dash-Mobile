// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function ResetAugments(){

global.AUG_FloorMult1 = 0;
global.AUG_MaxMult1 = 0;
global.AUG_JumpKickUp = 0;
global.AUG_DareDevil1 = 0;
global.AUG_SlowSteady1 = 0;
global.AUG_GuaranteedCat = 0;
global.AUG_CommonCats = 0;
global.AUG_CatPoints1 = 0;
global.AUG_BossSpawnsUp = 0;
global.AUG_Overshield = 0;
global.AUG_Blessed = 0;
global.AUG_BPXP1 = 0;
global.AUG_PassageofTime = 0;
global.AUG_EasyBosses = 0;
global.AUG_EnemyPassthru = 0;
global.AUG_STXCollector = 0;
global.AUG_DogOdds1 = 0;
global.AUG_FloorMult2 = 0;
global.AUG_MaxMult2 = 0;
global.AUG_SlowSteady2 = 0;
global.AUG_HotStart = 0;
global.AUG_FlashyPoints = 0;
global.AUG_UltPointsUp = 0;
global.AUG_DemolisherUp = 0;
global.AUG_TimeDistortEnthusiast = 0;
global.AUG_Ninja = 0;
global.AUG_Mulligan = 0;
global.AUG_STXEnthusiast = 0;
global.AUG_BPXP2 = 0;
global.AUG_OPOGs = 0;
global.AUG_CatPoints2 = 0;
global.AUG_TripleBlessed = 0;
global.AUG_DogOdds2 = 0;
global.AUG_MaxMult25 = 0;
global.AUG_ScalingCats = 0;
global.AUG_UltAbuser = 0;
global.AUG_TheGauntlet = 0;
global.AUG_4thRound = 0;
global.AUG_Loaded = 0;
global.AUG_9Lives = 0;
global.AUG_GiantSlayer = 0;
global.AUG_CantFallFloor = 0;
global.AUG_GigaBlessed = 0;
}


function ApplyAugments(){

ApplyAugArray = array_concat(global.PlayerProfile.EquippedCommons,global.PlayerProfile.EquippedRares,global.PlayerProfile.EquippedLegendary);

for(var i = 0; i < array_length(ApplyAugArray); i+=1)
{
	switch(ApplyAugArray[i])
	{
	case "Floor Multiplier 1":
		global.AUG_FloorMult1++;
	break;
	
	case "Max Multiplier 1":
		global.AUG_MaxMult1++;
	break;
	
	case "Jump/Kick Up":
		global.AUG_JumpKickUp++;
	break;
	
	case "Daredevil 1":
		global.AUG_DareDevil1++;
	break;
	
	case "Slow and Steady 1":
		global.AUG_SlowSteady1++;
	break;
	
	case "Guaranteed Cat Spawn":
		global.AUG_GuaranteedCat = 1;
	break;
	
	case "More Common Cat Spawns":
		global.AUG_CommonCats++;
	break;
	
	case "Cat Points 1":
		global.AUG_CatPoints1++;
	break;
	
	case "Boss Spawns Up":
		global.AUG_BossSpawnsUp++;
	break;
	
	case "Overshield":
		global.AUG_Overshield = 1;
	break;
	
	case "Blessed":
		global.AUG_Blessed++;
	break;
	
	case "Battle Pass XP 1":
		global.AUG_BPXP1++;
	break;
	
	case "Passage of Time Up":
		global.AUG_PassageofTime++;
	break;
	
	case "Easy Bosses":
		global.AUG_EasyBosses = 1;
	break;
	
	case "Enemy Pass through":
		global.AUG_EnemyPassthru = 1;
	break;
	
	case "STX Collector":
		global.AUG_STXCollector++;
	break;
	
	case "Dog Odds 1":
		global.AUG_DogOdds1++;
	break;
	
	case "Floor Multiplier 2":
		global.AUG_FloorMult2++;
	break;
	
	case "Max Multiplier 2":
		global.AUG_MaxMult2++;
	break;
	
	case "Slow and Steady 2":
		global.AUG_SlowSteady2++;
	break;
	
	case "Hot Start":
		global.AUG_HotStart = 1;
	break;
	
	case "Flashy Points Up":
		global.AUG_FlashyPoints++;
	break;
	
	case "Ultimate Points Up":
		global.AUG_UltPointsUp++;
	break;
	
	case "Demolisher Up":
		global.AUG_DemolisherUp++;
	break;
	
	case "Time Distort Enthusiast":
		global.AUG_TimeDistortEnthusiast++;
	break;
	
	case "Ninja":
		global.AUG_Ninja = 1;
	break;
	
	case "Mulligan":
		global.AUG_Mulligan = 1;
	break;
	
	case "STX Enthusiast":
		global.AUG_STXEnthusiast++;
	break;
	
	case "Battle Pass XP 2":
		global.AUG_BPXP2++;
	break;
	
	case "OP OGs":
		global.AUG_OPOGs = 1;
	break;
	
	case "Cat Points 2":
		global.AUG_CatPoints2++;
	break;
	
	case "Triple Blessed":
		global.AUG_TripleBlessed = 1;
	break;
	
	case "Dog Odds 2":
		global.AUG_DogOdds2++;
	break;
	
	case "Max Multiplier +25":
		global.AUG_MaxMult25 = 1;
	break;
	
	case "Scaling Cats":
		global.AUG_ScalingCats = 1;
	break;
	
	case "Ult Abuser":
		global.AUG_UltAbuser = 1;
	break;
	
	case "The Gauntlet":
		global.AUG_TheGauntlet = 1;
	break;
	
	case "4th Round":
		global.AUG_4thRound = 1;
	break;
	
	case "Loaded":
		global.AUG_Loaded = 1;
	break;
	
	case "9 Lives":
		global.AUG_9Lives = 1;
	break;
	
	case "Giant Slayer":
		global.AUG_GiantSlayer = 1;
	break;
	
	case "Can't fall through floor":
		global.AUG_CantFallFloor = 1;
	break;
	
	case "Giga Blessed":
		global.AUG_GigaBlessed = 1;
	break;
	}

}
}