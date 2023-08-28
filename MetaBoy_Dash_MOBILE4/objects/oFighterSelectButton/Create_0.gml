/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

switch(Fighter)
{
	case "Base Fighter":
		sprite = sFighterRun;
	break;
	
	case "Blue Fighter":
		sprite = sBlueFighter;
	break;
	
	case "Green Fighter":
		sprite = sGreenFighter;
	break;
	
	case "Yellow Fighter":
		sprite = sYellowFighter;
	break;
	
	case "Red Fighter":
		sprite = sRedFighter;
	break;
	
	case "Cyan Fighter":
		sprite = sCyanFighter;
	break;
	
	case "Gray Fighter":
		sprite = sWhiteFighter;
	break;
	
	case "Brit Boy":
		sprite = sBritRun;
	break;
	
	case "Blue Boxer":
		sprite = sBlueBoxerRun;
	break;
		
	case "Kung Fu Turtle":
		sprite = sKungFuTurtleRun;
	break;
		
	case "Superhero":
		sprite = sSuperheroRun;
	break;
		
	case "Keith":
		sprite = sKeithRun;
	break;
		
	case "Miami Boy":
		sprite = sMiamiBoyRun;
	break;
	
	case "Jetpack":
		sprite = sJetFall;
	break;
	
	case "Alien":
		sprite = sAlienRun;
	break;
	
	case "Cyborg Soldier":
		sprite = sCyborgSoldierRun;
	break;
	
	case "Fire Warrior":
		sprite = sFireWarriorRun;
	break;
	
	case "Secret Agent":
		sprite = sSecret_Agent;
	break;
	
	case "Minotaur":
		sprite = sMinotaurRun;
	break;
	
	case "STX Boy":
		sprite = sSTXBoyMenu;
	break;
	
	default:
		sprite = "None";
}

if(sprite != "None")
{
	instance_create_layer(x,y,"Instances2",oFighterSelectSprite,
	{
		sprite_index : sprite,
		target : id	
	});
}

