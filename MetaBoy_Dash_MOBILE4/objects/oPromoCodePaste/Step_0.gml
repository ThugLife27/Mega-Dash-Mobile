/// @description Insert description here
// You can write your code in this editor
if (ready_check == 1)
{
	delay_timer--;
	if (delay_timer == 0)
	{
		if clipboard_has_text()
		{
		    keyboard_string = clipboard_get_text();
			
			while(string_length(keyboard_string) > 14)
			{keyboard_string = string_delete(keyboard_string,string_length(keyboard_string),1);}
		}
		delay_timer = 10;
		ready_check = 0;
	}
}