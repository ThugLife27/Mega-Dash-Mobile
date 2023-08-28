// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function GetFighterNumber(){

switch(global.CharacterRunSkin)
{
	case sFighterRun:
		return "00";
	break;
	
	case sBritRun:
		return "01";
	break;
	
	case sBlueBoxerRun:
		return "02";
	break;
	
	case sKungFuTurtleRun:
		return "03";
	break;
	
	case sSuperheroRun:
		return "04";
	break;
	
	case sKeithRun:
		return "05";
	break;
	
	case sMiamiBoyRun:
		return "06";
	break;
	
	case sAlienRun:
		return "07";
	break;
	
	case sFireWarriorRun:
		return "08";
	break;
	
	case sBlueFighter:
		return "09";
	break;
	
	case sCyanFighter:
		return "10";
	break;
	
	case sGreenFighter:
		return "11";
	break;
	
	case sRedFighter:
		return "12";
	break;
	
	case sWhiteFighter:
		return "13";
	break;
	
	case sYellowFighter:
		return "14";
	break;
	
	case sSecret_Agent:
		return "15";
	break;
	
	case sMinotaurRun:
		return "16";
	break;
	
	default:
		return "00";
}
}

function GetFighterSprite(FighterNumber){

switch(FighterNumber)
{
	case "00":
		return sFighterRun;
	break;
	
	case "01":
		return sBritRun;
	break;
	
	case "02":
		return sBlueBoxerRun;
	break;
	
	case "03":
		return sKungFuTurtleRun;
	break;
	
	case "04":
		return sSuperheroRun;
	break;
	
	case "05":
		return sKeithRun;
	break;
	
	case "06":
		return sMiamiBoyRun;
	break;
	
	case "07":
		return sAlienRun;
	break;
	
	case "08":
		return sFireWarriorRun;
	break;
	
	case "09":
		return sBlueFighter;
	break;
	
	case "10":
		return sCyanFighter;
	break;
	
	case "11":
		return sGreenFighter;
	break;
	
	case "12":
		return sRedFighter;
	break;
	
	case "13":
		return sWhiteFighter;
	break;
	
	case "14":
		return sYellowFighter;
	break;
	
	case "15":
		return sSecret_Agent;
	break;
	
	case "16":
		return sMinotaurRun;
	break;
	
	default:
		return sFighterRun;
}
}