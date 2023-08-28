/// @description Insert description here
// You can write your code in this editor
if(start_timer >= 50)
{
if(creation_timer == max(20-ceil(global.UltimateCounter/2),5))
{
	y_create = irandom_range(300,900);
	enemy_sprite = irandom(6);
	enemy_image = irandom(11);
	instance_create_layer(2200,y_create,"UltEnemies",oEnemyUlt,
		{
			sprite_index : enemy_sprites[enemy_sprite],
			image_index : enemy_image
		});
	
	creation_timer = 0;
}
creation_timer++;
}
start_timer++;


