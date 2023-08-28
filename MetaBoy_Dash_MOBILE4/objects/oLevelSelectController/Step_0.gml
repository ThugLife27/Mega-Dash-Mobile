/// @description Insert description here
// You can write your code in this editor
if(switch_map == 1)
{
	global.MapSelection = global.PlayerProfile.Levels[array_index];
	
	switch(global.MapSelection)
	{
	case "Layer 2":
		image_index = 0;
	break;
	
	case "Gaia's Lab":
		image_index = 1;
	break;
	
	case "General Chat":
		image_index = 2;
	break;
	
	case "Rug Pull":
		image_index = 3;
	break;

	case "Burn Wallet":
		image_index = 4;
	break;
	}
	
	switch_map = 0;
}