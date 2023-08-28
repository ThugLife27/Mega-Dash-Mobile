/// @description Insert description here
// You can write your code in this editor
if (ready_check == 1)
{
	delay_timer--;
	if (delay_timer == 0)
	{
		global.AutoBossSelect++;
		
		if(global.AutoBossSelect > 4)
		{global.AutoBossSelect = 0;}
		
		delay_timer = 10;
		ready_check = 0;
	}
}