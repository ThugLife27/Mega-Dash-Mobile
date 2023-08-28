event_inherited();

randomize();

os_set_orientation_lock(false,true);
os_powersave_enable(false);

global.difficulty = 0;
global.music_toggle = 0;
global.AutoSaving = 0;
global.DebugMode = 0;
global.AutoBoss = 0;
global.AutoBossSelect = 0;
global.InfReroll = 0;

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

InternetConnected = os_is_network_connected(false);
GooglePlayAvail = GooglePlayServices_IsAvailable();
image_index = min(InternetConnected,GooglePlayAvail);
SigningIn = 0;
CreatingAccount = 0;
SignInFail = 0;
CreateAccountFail = 0;
http_type = 0;
request = 0;
request1 = 0;
request2 = 0;
request3 = 0;
request4 = 0;

uniqueName = "MegaDash";
description = "MegaDashSaveFile";

if(min(InternetConnected,GooglePlayAvail) == 1)
{
	SigningIn = 1;
	GooglePlayServices_Player_Current();
}









