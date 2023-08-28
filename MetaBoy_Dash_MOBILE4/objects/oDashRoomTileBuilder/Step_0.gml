/// @description Insert description here
// You can write your code in this editor
if (global.room_create_count >= room_create_num)
{
	//Create TileSet
	//config_select = 16;
	config_select = irandom(config_select_num);
	
	//Create MetaBoy Enemy and Cats
	enemy_create = enemy_create + 1 + global.uEnemyOverload;
	if(enemy_create > 2){enemy_create = 2;}
	for (var i = 0; i < array_length(tile_config_x[config_select]); i += 1)
	{
		instance_create_layer(tile_config_x[config_select][i]+room_create_num,tile_config_y[config_select][i]-32,"Walls",oWall);
	}
	
	if (enemy_create == 2)
	{
		//cat_create = irandom(12 - global.uBritBoy);
		cat_create = irandom(99);
		
		if(cat_create <= (6 + 7*global.uEasyCats + 4*global.AUG_CommonCats) || (global.multiplier == 1 && global.uEasyCats == 1 && global.score >= 500) || (global.multiplier == 1 && global.uCatStart == 1 && global.score >= 500) || (global.multiplier == global.multiplier_floor && global.AUG_GuaranteedCat == 1))
		{
			dog_spawn = irandom(99);
			if(dog_spawn <= (4 + 4*global.AUG_DogOdds1 + 8*global.AUG_DogOdds2)){cat_skin_select = irandom_range(1,5);}
			else{cat_skin_select = 0;}
			
			if(global.uEasyCats == 0)
			{
				cat_create_location = irandom(array_length(cat_config_x[config_select])-1);
				instance_create_layer(cat_config_x[config_select][cat_create_location]+room_create_num,cat_config_y[config_select][cat_create_location]-32,"Enemies",oCat,
				{sprite_index : cat_skins[cat_skin_select]});
			}
			else
			{
				enemy_create_location = irandom(array_length(enemy_config_x[config_select])-1);
				instance_create_layer(enemy_config_x[config_select][enemy_create_location]+room_create_num,enemy_config_y[config_select][enemy_create_location]-32,"Enemies",oCat,
				{sprite_index : cat_skins[cat_skin_select]});
			}
		}
		else
		{
			enemy_create_location = irandom(array_length(enemy_config_x[config_select])-1);
			
			enemy_special_chance = irandom(99);
			if(enemy_special_chance <= (4 + 14*global.uBlessed + 4*global.AUG_Blessed + 12*global.AUG_TripleBlessed + 16*global.AUG_GigaBlessed + global.SS4SuperSaiyan))
			{enemy_sprite_selection = enemy_sprites[7];}
			else
			{enemy_sprite_selection = enemy_sprites[irandom(6)];}
			
			if(global.AutoBoss == 1 || global.Boss_AutoSpawn == 0)
			{Boss_Chance = 1;}
			else
			{Boss_Chance = irandom(max((25000-global.scoretotal)/(100+1200*global.uBossBait+300*global.AUG_BossSpawnsUp),40-min(37,(34*global.uBossBait+8*global.AUG_BossSpawnsUp))));}
			
			if(Boss_Chance == 1 && global.BossBattleComplete < (global.AUG_TheGauntlet+1) && global.BossBattleActive == 0 && global.BossSpawned == 0)
			{
				if(global.AutoBoss == 1)
				{Boss_Selection = global.AutoBossSelect;}
				else
				{
					if(global.difficulty == 2 && global.Boss_AutoSpawn > 0){btcboy_chance = 1;}
					else{btcboy_chance = 0;}
				
					Boss_Selection = irandom(3 + btcboy_chance);
				}
				
				switch(Boss_Selection)
				{
				case 0:
				enemy_sprite_selection = sProbert; global.BossSelect = oProbert;
				break
				
				case 1: 
				enemy_sprite_selection = sThugLife; global.BossSelect = oThugLife;
				break
				
				case 2:
				enemy_sprite_selection = sAdam; global.BossSelect = oAdam;
				break
				
				case 3:
				enemy_sprite_selection = sPfizer; global.BossSelect = oPfizer;
				break
				
				case 4:
				enemy_sprite_selection = sBTCBoy; global.BossSelect = oBTCBoy;
				break
				
				}
				
				global.BossSpawned = 1;
				global.Boss_AutoSpawn = 4;
			}
			
			instance_create_layer(enemy_config_x[config_select][enemy_create_location]+room_create_num,enemy_config_y[config_select][enemy_create_location]-32,"Enemies",oEnemy,
			{sprite_index : enemy_sprite_selection});
		}
		
		enemy_create = 0;
	}
	
	//Create Coins
	coin_count = 1+3*global.uSTXCollector + 1*global.AUG_STXCollector + 2*global.AUG_STXEnthusiast;
	for (var i = 0; i < coin_count; i+= 1)
	{
		instance_create_layer(irandom_range(1800,3400),irandom_range(100,1000),"Enemies",oSTXCoin);
	}
			
	global.room_create_count = 0;
	
}
