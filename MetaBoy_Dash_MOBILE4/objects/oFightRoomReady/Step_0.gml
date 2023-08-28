/// @description Insert description here
// You can write your code in this editor
if(global.pause == 0)
{
if (ready_timer == 0)
{
	instance_create_layer(695,433,"Player",oFightRoomFight)
	instance_destroy();
}

ready_timer--;
}