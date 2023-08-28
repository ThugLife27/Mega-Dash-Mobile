/// @description Insert description here
// You can write your code in this editor
draw_set_font(Font6);
draw_set_halign(fa_left);
draw_set_valign(fa_top);

if(Info == 1)
{
	switch(Info_asset)
	{
		case "Miami Boy":
			draw_text(975,245,"DESCRIPTION\nA cool dude with 80s vibes hailing\nfrom South Beach\n\n\nABILITY\n200 point bonus boost to Flashy\ncartridge");
		break
		
		case "Cyborg Soldier":
			draw_text(975,245,"DESCRIPTION\nOtterman's first ever custom\nMega Dash Character!\n\n\nABILITY\nSpin Punch!");
		break
		
		default:
			draw_text(975,245,"DESCRIPTION\nNot Available\n\n\nABILITY\nNot Available");
		break
	}
}