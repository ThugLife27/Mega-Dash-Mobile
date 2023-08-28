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

if(x < -100)
{
	global.multiplier = global.multiplier_floor;
		
	if(oGaiaTextBox.fail == 0 && oGaiaTextBox.level != 7)
	{
		oGaiaTextBox.fail = 1;
		oGaiaTextBox.text_show = irandom(3);
		oGaiaTextBox.text_timer = 24;
		oGaiaTextBox.text_pause_timer = 0;
			
		with(oEnemyTutorial)
		{
			flash = 28;
			kill = 1;
		}
	}
	
	instance_destroy();
}

if(enemy_dead == 1 && x > 2100)

{
	if((oGaiaTextBox.level == 2 || oGaiaTextBox.level == 4 || oGaiaTextBox.level == 6) && oGaiaTextBox.level_execute == 1 && oGaiaTextBox.fail == 0)
	{
		oGaiaTextBox.level++;
		oGaiaTextBox.level_execute = 0;
		oGaiaTextBox.text_show = 0;
		oGaiaTextBox.text_timer = 24;
		oGaiaTextBox.text_pause_timer = 0;
	}
	
	if(sprite_index == sProbert || sprite_index == sThugLife || sprite_index == sAdam || sprite_index == sPfizer || sprite_index == sBTCBoy){global.BossBattleStart = 1;}
	instance_destroy();
}

if(lasered == 1 && flash == 0 && enemy_dead = 1)
{
	if(sprite_index == sProbert || sprite_index == sThugLife || sprite_index == sAdam || sprite_index == sPfizer || sprite_index == sBTCBoy){global.BossBattleStart = 1;}
	instance_destroy();
}

if(kill == 1 && flash == 0)
{instance_destroy();}

