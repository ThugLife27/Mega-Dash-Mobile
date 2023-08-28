/// @description Insert description here
// You can write your code in this editor

if (ready_check == 1)
{
	delay_timer--;
	if (delay_timer == 0)
	{
		url_open("https://metaboy.run/mega-dash/megadash_privacyPolicy.html");
		
		delay_timer = 10;
		ready_check = 0;
	}
}