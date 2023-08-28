/// @description Insert description here
// You can write your code in this editor
if (ready_check == 1)
{
	delay_timer--;
	if (delay_timer == 0)
	{
		global.PlayerProfile =
		{
			age: "",
			Beta: 1,
			BattlePass: 0,
			BattlePassSeason: 1,
			BattlePassXP: 0,
			BattlePassClaimed: [],
			Coins: 0,
			Characters: [],
			EquippedCharacter: "",
			Levels: [],
			EquippedLevel: "",
			UnredeemedAugments: [],
			CommonAugments : ["Blessed","Max Multiplier 1"],
			RareAugments : [],
			LegendaryAugments : [],
			EquippedCommons : ["","","",""],
			EquippedRares : ["","",""],
			EquippedLegendary : [""],
			Stats: 
			{
				NumRounds : 0,
				NumGames : 0,
				NumEnemies: 0,
				NumCats : 0,
				NumDogs : 0,
				NumBosses : 0,
				NumBossesDefeated : 0,
				UniqueBossesDefeated : [0,0,0,0,0,0],
			}
		};
		
		for(var i = 0; i < 30; i+=1)
		{global.PlayerProfile.BattlePassClaimed[i] = 0;}

		global.PlayerProfile.Characters[0] = "Base Fighter";
		global.Character = oPlayer;
		global.CharacterRunSkin = sFighterRun;
		global.CharacterKickSkin = sFighterKick
		global.uBaseFighter = 1;
	
		global.PlayerProfile.Levels[0] = "Layer 2";
		global.MapSelection = "Layer 2";
		
		delay_timer = 10;
		ready_check = 0;
	}
}
