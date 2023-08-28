/// @description Insert description here
// You can write your code in this editor

draw_self();

if (flash > 0)
{
		flash --;
		if (frac(flash/4) == 0)
		{
			image_alpha = 1;
			draw_self();
		}
		else
		{
			image_alpha = 0;
			draw_self();	
		}
}





