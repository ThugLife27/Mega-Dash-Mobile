/// @description Insert description here
// You can write your code in this editor
if (ready_check == 1)
{
	delay_timer--;
	if (delay_timer == 0)
	{
		oFighterSelectController.Update = 1;
		oFighterSelectController.Page--;
		
		delay_timer = 10;
		ready_check = 0;
	}
}

if(oFighterSelectController.Page = 0)
{image_index = 1;}
else
{image_index = 0;}

if(image_index == 1 && oFighterSelectRight.image_index == 1)
{
	image_alpha = 0;
	oFighterSelectRight.image_alpha = 0;
}
else
{
	image_alpha = 1;
	oFighterSelectRight.image_alpha = 1;
}