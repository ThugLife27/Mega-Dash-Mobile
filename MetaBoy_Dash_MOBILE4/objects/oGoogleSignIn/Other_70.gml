
switch(async_load[?"type"])
{
	case "GooglePlayServices_Player_Current":
		if(!async_load[?"success"])
		{
			SigningIn = 0;
			SignInFail = 1;
			exit;
		}
		
		PlayerData = json_parse(async_load[?"player"])
		global.Player_Name = PlayerData.displayName;
		GooglePlayServices_IsAuthenticated();
	break;
	
	case "GooglePlayServices_IsAuthenticated":
		if(!async_load[?"success"])
		{
			SigningIn = 0;
			SignInFail = 1;
			exit;
		}
		
		else if(async_load[?"isAuthenticated"])
		{
			//If Authenticated, load game
			GooglePlayServices_SavedGames_Load(true);
		}
		else
		{
			global.Player_Name = "";
			SigningIn = 0;
			SignInFail = 1;
			exit;
		}
			
	break;

//Attempt to Load Player ID to link Wallet
	case "GooglePlayServices_SavedGames_Load":
		
		if(!async_load[?"success"])
		{
			SigningIn = 0;
			CreatingAccount = 1;
			var path = "save_thumbnail.png"
			sprite_save_w(sFighterRun, 0, path);
			var data = global.PlayerProfile;
			var jsonData = json_stringify(data);
			GooglePlayServices_SavedGames_CommitNew(uniqueName,description,jsonData,path);
		}
				
		//If no Player ID data found, create save profile!
		else if(async_load[?"snapshots"] == "[]")
		{	
			SigningIn = 0;
			CreatingAccount = 1;
			var path = "save_thumbnail.png"
			sprite_save_w(sFighterRun, 0, path);
			var data = global.PlayerProfile;
			var jsonData = json_stringify(data);
			GooglePlayServices_SavedGames_CommitNew(uniqueName,description,jsonData,path);
		}
		else
		{GooglePlayServices_SavedGames_Open(uniqueName);}
		
		break;


	case "GooglePlayServices_SignIn":
		if(!async_load[? "success"])
		{
			SigningIn = 0;
			SignInFail = 1;
		}
		else
		{GooglePlayServices_Player_Current();}

	break;

	case "GooglePlayServices_SavedGames_Open":
		
		if(!async_load[?"success"])
		{
			SigningIn = 0;
			SignInFail = 1;
			exit;
		}
		
		//Game loaded successfully, save as variable
		global.PlayerProfile = json_parse(async_load[? "data"]);
			
		//Go to game start
		if(!struct_exists(global.PlayerProfile,"Stats") || !struct_exists(global.PlayerProfile,"age"))
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
		}

		if(global.PlayerProfile.age == "")
		{room_goto(GetAgeRoom);}
		else
		{room_goto(StartRoom1);}
		
	break;
	
	case "GooglePlayServices_SavedGames_CommitNew":
		if(!async_load[?"success"])
		{
			CreatingAccount = 0;
			CreateAccountFail = 1;
			exit;
		}

		//Game file initiated, go to start room
		if(!struct_exists(global.PlayerProfile,"Stats") || !struct_exists(global.PlayerProfile,"age"))
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
		}
		
		if(global.PlayerProfile.age == "")
		{room_goto(GetAgeRoom);}
		else
		{room_goto(StartRoom1);}
		
	break;
}

