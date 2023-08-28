/// @description Insert description here
// You can write your code in this editor

draw_self();

if(global.GhostActive == 1 || global.NinjaActive == 1)
{image_alpha = .4;}
else{image_alpha = 1;}

if (flash > 0)
{
		flash --;
		if (frac(flash/4) != 0)
		{
			shader_set(shWhite);
			draw_self();
			shader_reset();
		}
}
