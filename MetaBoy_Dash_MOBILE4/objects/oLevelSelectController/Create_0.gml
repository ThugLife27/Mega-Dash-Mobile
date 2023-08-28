/// @description Insert description here
// You can write your code in this editor
switch_map = 0;
sprite_selection = global.MapSelection;

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

for (var i = 0; i < array_length(global.PlayerProfile.Levels); i += 1)
{
	if(sprite_selection == global.PlayerProfile.Levels[i])
	{array_index = i;}
}
