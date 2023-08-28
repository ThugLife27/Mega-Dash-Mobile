/// @description Insert description here
// You can write your code in this editor

if(global.player_revive_mode == 0)
{
global.player_death = 1;
global.multiplier = 1;
if(oGaiaTextBox.fail == 0 && oGaiaTextBox.text_show == 6)
{
	oGaiaTextBox.fail = 1;
	oGaiaTextBox.text_show = irandom(3);
	oGaiaTextBox.text_timer = 24;
	oGaiaTextBox.text_pause_timer = 0;
}
}





