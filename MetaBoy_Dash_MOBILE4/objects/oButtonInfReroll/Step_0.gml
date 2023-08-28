/// @description Insert description here
// You can write your code in this editor
if (ready_check == 1)
{
	delay_timer--;
	if (delay_timer == 0)
	{
		if(global.InfReroll == 0)
		{
			global.InfReroll = 1;
			global.RerollCount = 5;	
		}
		else
		{global.InfReroll = 0;}
		
		delay_timer = 10;
		ready_check = 0;
	}
}