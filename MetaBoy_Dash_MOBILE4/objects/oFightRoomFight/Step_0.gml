/// @description Insert description here
// You can write your code in this editor
if(global.pause == 0)
{
if (ready_timer == 0)
	{
		instance_create_layer(oPlayerStart.x,oPlayerStart.y,"Player",oPlayer);
		instance_create_layer(293,4,"Fighter",oScoreTimer);
		instance_destroy(oPlayerStart);
		instance_destroy();
	}
	
ready_timer--;
}