/// @description Insert description here
// You can write your code in this editor

draw_self();

draw_sprite(sUpgrades,ArraySelection[0],780,214);

if(global.round_number >= 2 || global.uGoldenFighter == 1)
{	
if(image_index == 0)
{
for (i = 0; i < array_length(global.UpgradeChoiceArray); i+=1)
{draw_sprite(sUpgradeIcon,global.UpgradeChoiceArray[i],1630+(i*77),40);}
}
else
{
for (i = 0; i < array_length(global.UpgradeChoiceArray)-1; i+=1)
{draw_sprite(sUpgradeIcon,global.UpgradeChoiceArray[i],1630+(i*77),40);}
}
}
