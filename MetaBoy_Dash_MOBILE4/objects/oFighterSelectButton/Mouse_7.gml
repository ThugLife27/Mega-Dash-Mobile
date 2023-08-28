/// @description Insert description here
// You can write your code in this editor

if(image_xscale < 1)
{
	image_xscale = 1;
	image_yscale = 1;
	
	if(Fighter != "None")
	{
		audio_play_sound(StartMenuSelect,10,false);	
		switch(Fighter)
		{
			case "Base Fighter":
				global.Character = oPlayer;
				global.CharacterRunSkin = sFighterRun;
				global.CharacterKickSkin = sFighterKick;
				//Need to clear other upgrades
				global.uBaseFighter = 1;
			break;
	
			case "Brit Boy":
				global.Character = oPlayer;
				global.CharacterRunSkin = sBritRun;
				global.CharacterKickSkin = sBritKick;
				//Need to clear other upgrades
				global.uBaseFighter = 1;
			break;
	
			case "Blue Boxer":
				global.Character = oPlayer;
				global.CharacterRunSkin = sBlueBoxerRun;
				global.CharacterKickSkin = sBlueBoxerKick;
				//Need to clear other upgrades
				global.uBaseFighter = 1;
			break;
		
			case "Kung Fu Turtle":
				global.Character = oPlayer;
				global.CharacterRunSkin = sKungFuTurtleRun;
				global.CharacterKickSkin = sKungFuTurtleKick;
				//Need to clear other upgrades
				global.uBaseFighter = 1;
			break;
		
			case "Superhero":
				global.Character = oPlayer;
				global.CharacterRunSkin = sSuperheroRun;
				global.CharacterKickSkin = sSuperheroKick;
				//Need to clear other upgrades
				global.uBaseFighter = 1;
			break;
		
			case "Keith":
				global.Character = oPlayer;
				global.CharacterRunSkin = sKeithRun;
				global.CharacterKickSkin = sKeithKick;
				//Need to clear other upgrades
				global.uBaseFighter = 1;
			break;
		
			case "Miami Boy":
				global.Character = oPlayer;
				global.CharacterRunSkin = sMiamiBoyRun;
				global.CharacterKickSkin = sMiamiBoyKick;
				//Need to clear other upgrades
				global.uBaseFighter = 1;
			break;
			
			case "Jetpack":
				global.Character = oPlayerJet;
				global.CharacterRunSkin = sJetFall;
				global.CharacterKickSkin = sJetFall;
				//Need to clear other upgrades
				global.uBaseFighter = 1;
			break;
			
			case "Alien":
				global.Character = oPlayerAlien;
				global.CharacterRunSkin = sAlienRun;
				global.CharacterKickSkin = sAlienKick;
				//Need to clear other upgrades
				global.uBaseFighter = 1;
			break;
			
			case "Cyborg Soldier":
				global.Character = oPlayer;
				global.CharacterRunSkin = sCyborgSoldierRun;
				global.CharacterKickSkin = sCyborgSoldierKick;
				//Need to clear other upgrades
				global.uBaseFighter = 1;
			break;
			
			case "Fire Warrior":
				global.Character = oPlayer;
				global.CharacterRunSkin = sFireWarriorRun;
				global.CharacterKickSkin = sFireWarriorKick;
				//Need to clear other upgrades
				global.uBaseFighter = 1;
			break;
			
			case "Blue Fighter":
				global.Character = oPlayer;
				global.CharacterRunSkin = sBlueFighter;
				global.CharacterKickSkin = sBlueFighterKick;
				//Need to clear other upgrades
				global.uBaseFighter = 1;
			break;
			
			case "Cyan Fighter":
				global.Character = oPlayer;
				global.CharacterRunSkin = sCyanFighter;
				global.CharacterKickSkin = sCyanFighterKick;
				//Need to clear other upgrades
				global.uBaseFighter = 1;
			break;
			
			case "Green Fighter":
				global.Character = oPlayer;
				global.CharacterRunSkin = sGreenFighter;
				global.CharacterKickSkin = sGreenFighterKick;
				//Need to clear other upgrades
				global.uBaseFighter = 1;
			break;
			
			case "Red Fighter":
				global.Character = oPlayer;
				global.CharacterRunSkin = sRedFighter;
				global.CharacterKickSkin = sRedFighterKick;
				//Need to clear other upgrades
				global.uBaseFighter = 1;
			break;
			
			case "Gray Fighter":
				global.Character = oPlayer;
				global.CharacterRunSkin = sWhiteFighter;
				global.CharacterKickSkin = sWhiteFighterKick;
				//Need to clear other upgrades
				global.uBaseFighter = 1;
			break;
			
			case "Yellow Fighter":
				global.Character = oPlayer;
				global.CharacterRunSkin = sYellowFighter;
				global.CharacterKickSkin = sYellowFighterKick;
				//Need to clear other upgrades
				global.uBaseFighter = 1;
			break;
			
			case "Secret Agent":
				global.Character = oPlayer;
				global.CharacterRunSkin = sSecret_Agent;
				global.CharacterKickSkin = sSecret_Agent_Kick;
				//Need to clear other upgrades
				global.uBaseFighter = 1;
			break;
			
			case "Minotaur":
				global.Character = oPlayer;
				global.CharacterRunSkin = sMinotaurRun;
				global.CharacterKickSkin = sMinotaurKick;
				//Need to clear other upgrades
				global.uBaseFighter = 1;
			break;
			
			case "STX Boy":
				global.Character = oPlayerSTX;
				global.CharacterRunSkin = sSTXBoyMenu;
				//global.CharacterKickSkin = sMinotaurKick;
				//Need to clear other upgrades
				global.uBaseFighter = 1;
			break;
			
			
		}
	}
}