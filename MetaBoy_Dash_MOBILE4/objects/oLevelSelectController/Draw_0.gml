/// @description Insert description here
// You can write your code in this editor

draw_self();

draw_set_alpha(1.0);
draw_set_colour(c_white);
draw_set_font(Font8);
draw_set_halign(fa_center);
draw_set_valign(fa_top);
draw_text(x,y-55,global.MapSelection);

draw_set_font(Font6);
switch(global.MapSelection)
{
	case "Layer 2":
		draw_text(512,250,"Home of the\nOG MetaBoy Collection\n\n...the place where it\nall began!");
		draw_text(512,618,"Default");
	break;
	
	case "Gaia's Lab":
		draw_text(512,250,"MetaBoy Headquarters\nfor\nResearch & Development");
		draw_text(512,618,"Season Zero Beta");
	break;
	
	case "General Chat":
		draw_text(512,250,"The place where all\nthe cool kids hangout!");
		draw_text(512,618,"Season Zero Beta");
	break;
	
	case "Rug Pull":
		draw_text(512,250,"A desolate wasteland\n\n... filled with rugs");
		draw_text(512,618,"Season Zero Beta");
	break;
	
	case "Burn Wallet":
		draw_text(512,250,"If MetaBoys go to\nthis place, they will\nnever return");
		draw_text(512,618,"Season Zero Beta");
	break;
}