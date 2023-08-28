/// @description Insert description here
// You can write your code in this editor
draw_self();

draw_set_alpha(1.0);
draw_set_colour(c_white);
draw_set_font(Font8);
draw_set_halign(fa_right);
draw_set_valign(fa_top);
draw_text(x,y+100,cost);
draw_sprite(sStoreCoins,0,x+65,y+115);


draw_set_halign(fa_center);
draw_set_valign(fa_bottom);
if(image_alpha = 0)
{
	switch(reason)
	{
		case 1:
			draw_text(x,y-100,"Error:\nGoogle Play Services\nNot Authenticated");
		break
		
		case 2:
			draw_text(x,y-100,"Error:\nIssue with Google\nPlay Services");
		break
		
		case 3:
			draw_text(x,y-100,"Error:\nPurchase Failed...");
		break
		
		case 4:
			draw_text(x,y-100,"Purchase Successful!");
		break
	}	
}

else if(sprite_index == sStoreConfirmPurchase && image_index == 0)
{draw_text(x,y-100,"Confirm Purchase?")}

else if(sprite_index == sStoreConfirmPurchase && image_index == 1)
{draw_text(x,y-100,"Purchase Another?")}

else if(sprite_index == sLoadingCircle)
{draw_text(x,y-100,"Purchasing...")}
	