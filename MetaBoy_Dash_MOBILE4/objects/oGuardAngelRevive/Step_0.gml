/// @description Insert description here
// You can write your code in this editor
if (ready_check = 1)
{
	delay_timer--;
	if (delay_timer == 0)
	{
		instance_create_layer(256,200,"Player",oPlayer);
		global.player_death = 0;
		global.uGuardianAngelAvail--;
		global.roomspeed = global.revive_roomspeed;
		global.player_revive_mode = 1;
		if(instance_exists(oPlayer))
		{oPlayer.flash = 180;}
		instance_destroy(oGuardAngelMenu);
		instance_destroy(oGuardAngelNextRound);
		instance_destroy();
	}
}