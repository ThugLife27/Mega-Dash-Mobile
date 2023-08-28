/// @description Insert description here
// You can write your code in this editor

x = x - 25;

if (x < -200)
{
	instance_create_layer(x+128*22,1080,"UltEnemies",oWallUlt);
	instance_destroy();
}

