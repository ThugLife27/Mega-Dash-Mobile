/// @description Insert description here
// You can write your code in this editor
draw_self();
draw_set_alpha(1.0);
draw_set_colour(c_white);
draw_set_font(Font6);
draw_set_halign(fa_left);
draw_set_valign(fa_center);

draw_text(80,160,"Rounds Played: " + string(global.PlayerProfile.Stats.NumRounds));
draw_text(80,205,"Games Completed: " + string(global.PlayerProfile.Stats.NumGames));
draw_text(80,250,"Enemies Kicked: " + string(global.PlayerProfile.Stats.NumEnemies));
draw_text(80,295,"Cats Collected: " + string(global.PlayerProfile.Stats.NumCats));
draw_text(80,340,"Dogs Collected: " + string(global.PlayerProfile.Stats.NumDogs));
draw_text(80,385,"Bosses Encountered: " + string(global.PlayerProfile.Stats.NumBosses));
draw_text(80,430,"Bosses Defeated: " + string(global.PlayerProfile.Stats.NumBossesDefeated));


draw_text(80,475,"Unique Bosses Defeated: " + string(unique_bosses)+"/6");


adjustment = 0;
for(var i = 0; i < 4; i+=1)
{
	if(global.PlayerProfile.EquippedCommons[i] == "")
	{adjustment++;}
}
draw_text(80,720,"Common Augments Collected: " + string(array_length(global.PlayerProfile.CommonAugments)+array_length(global.PlayerProfile.EquippedCommons) - adjustment) + "/52");

adjustment = 0;
for(var i = 0; i < 3; i+=1)
{
	if(global.PlayerProfile.EquippedRares[i] == "")
	{adjustment++;}
}
draw_text(80,765,"Rare Augments Collected: " + string(array_length(global.PlayerProfile.RareAugments)+array_length(global.PlayerProfile.EquippedRares) - adjustment) + "/40");

adjustment = 0;
for(var i = 0; i < 1; i+=1)
{
	if(global.PlayerProfile.EquippedLegendary[i] == "")
	{adjustment++;}
}
draw_text(80,810,"Legendary Augments Collected: " + string(array_length(global.PlayerProfile.LegendaryAugments)+array_length(global.PlayerProfile.EquippedLegendary) - adjustment) + "/10");


