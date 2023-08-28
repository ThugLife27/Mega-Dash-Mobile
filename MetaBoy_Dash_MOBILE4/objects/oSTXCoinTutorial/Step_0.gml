/// @description Insert description here
// You can write your code in this editor

x = x - global.roomspeed;

if(x < -200)
{
	if(oGaiaTextBox.fail == 0)
	{
		oGaiaTextBox.fail = 1;
		oGaiaTextBox.text_show = irandom(3);
		oGaiaTextBox.text_timer = 24;
		oGaiaTextBox.text_pause_timer = 0;
	}
	instance_destroy();
}