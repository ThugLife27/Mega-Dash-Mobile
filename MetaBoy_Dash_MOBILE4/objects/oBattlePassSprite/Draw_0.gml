/// @description Insert description here
// You can write your code in this editor
if(xp_cost > 70000 && claimed == 0)
{
	shader_set(shBlack);
	draw_self();
	shader_reset();
	draw_sprite(sQuestionMark,0,x,y);
}
else
{
	draw_self();
}