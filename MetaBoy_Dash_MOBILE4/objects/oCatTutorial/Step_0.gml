/// @description Insert description here
// You can write your code in this editor

x = x - global.roomspeed;

if(x < -100 && cat_alive == 1)
{
	if(oGaiaTextBox.fail == 0)
	{
		oGaiaTextBox.fail = 1;
		oGaiaTextBox.text_show = irandom(3);
		oGaiaTextBox.text_timer = 24;
		oGaiaTextBox.text_pause_timer = 0;
			
		with(oCatTutorial)
		{
			flash = 28;
			kill = 1;
		}
	}
	instance_destroy();	
}

if(cat_alive == 0)
{
	image_alpha = 0;
	cat_timer--;
}

if(cat_timer == 0)
{
	instance_destroy();
}

if(kill == 1 && flash == 0)
{instance_destroy();}