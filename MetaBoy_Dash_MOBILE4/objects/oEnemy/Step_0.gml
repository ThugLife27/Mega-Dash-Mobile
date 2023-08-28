/// @description Insert description here
// You can write your code in this editor
if(enemy_dead == 0 || lasered == 1)
{x = x - global.roomspeed;}

if(enemy_dead == 1 && lasered == 0)
{
	x = x + hsp;
	y = y + vsp;
	vsp = vsp + grv;
	image_angle = image_angle + 6;
}

if(x < -100 && global.gamestart == 1)
{
	if(sprite_index = sProbert || sprite_index = sThugLife || sprite_index = sAdam || sprite_index = sPfizer || sprite_index = sBTCBoy)
	{
		global.BossSpawned = 0;
		instance_destroy();
	}
	else
	{
		if(global.MulliganCounter == 0 && global.uGoku == 0 && global.PlayerUnstoppable == 0 && global.BossBattleActive == 0 && global.GhostActive == 0 && global.player_revive_mode == 0 && global.NinjaActive == 0)
		{
			global.multiplier = global.multiplier_floor;
			global.SSKickCounter = 0;
		}
		if(global.MulliganCounter == 1)
		{global.MulliganCounter = 0;}
		instance_destroy();
	}
}

if(enemy_dead == 1 && x > 2100)

{
	if(sprite_index == sProbert || sprite_index == sThugLife || sprite_index == sAdam || sprite_index == sPfizer || sprite_index == sBTCBoy){global.BossBattleStart = 1;}
	instance_destroy();
}

if(lasered == 1 && flash == 0 && enemy_dead = 1)
{
	if(sprite_index == sProbert || sprite_index == sThugLife || sprite_index == sAdam || sprite_index == sPfizer || sprite_index == sBTCBoy){global.BossBattleStart = 1;}
	instance_destroy();
}


