/// @description Insert description here
// You can write your code in this editor
if(global.pause = 0)
{
	block_counter++;
	if(tutorial_mode == 0 && block_counter == 16)
	{
		instance_create_layer(2176,1088,"Walls",oWallTutorial);
		block_counter = 0;
	}
	
	if(level_execute == 1)
	{
		level_execute = 0;
		switch(level)
		{
			case 1:
				instance_create_layer(2200,750,"Enemies",oSTXCoinTutorial);
				instance_create_layer(2700,500,"Enemies",oSTXCoinTutorial);
				instance_create_layer(3200,680,"Enemies",oSTXCoinTutorial);
				instance_create_layer(3700,450,"Enemies",oSTXCoinTutorial);
			break;
			
			case 2:
				instance_create_layer(2176,1088-64,"Enemies",oEnemyTutorial,
				{sprite_index : sEnemy1});
			break;
			
			case 3:
				for(i = 0; i < 10; i += 1)
				{			
					sprite_select = irandom(6);
					instance_create_layer(2176+700*i,1088-64,"Enemies",oEnemyTutorial,
					{sprite_index : enemy_sprites[sprite_select]});
				}
			break;
			
			case 4:
				global.multiplier = 10;
				instance_create_layer(2176,1088-64,"Enemies",oEnemyTutorial,
				{sprite_index : sEnemy8});
			break;
			
			case 5:
				instance_create_layer(2176,1088-64,"Enemies",oCatTutorial);
				instance_create_layer(2876,1088-64,"Enemies",oCatTutorial);
			break;
			
			case 6:
				instance_create_layer(2176,1088-64,"Enemies",oEnemyTutorial,
				{sprite_index : sThugLife});
			break;
			
		}
	}
	
if(instance_exists(oThugLife) && oGaiaTextBox.text_show == 6)
{
	if(enemy_timer == 0)
	{
		sprite_select = irandom(6);
		instance_create_layer(2176,1088-64,"Enemies",oEnemyTutorial,
		{sprite_index : enemy_sprites[sprite_select]});
		
		enemy_timer = 220;
	}
	enemy_timer--;
}
//if (global.room_create_count >= room_create_num)
//{
//	//Create TileSet
//	//config_select = 16;
//	config_select = irandom(config_select_num);
	
	
//}
}
