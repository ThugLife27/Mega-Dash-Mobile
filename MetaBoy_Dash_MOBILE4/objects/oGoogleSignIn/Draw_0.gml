/// @description Insert description here
// You can write your code in this editor
draw_self();

draw_set_alpha(1.0);
draw_set_colour(c_white);
draw_set_font(Font6);
draw_set_halign(fa_center);
draw_set_valign(fa_center);

if(InternetConnected == 0)
{draw_text(570,1290,"Internet appears to\nbe offline");}
else if(GooglePlayAvail == 0)
{draw_text(570,1290,"Google Play Services\nappears to be\nnot available");}
else if(CreatingAccount == 1)
{draw_text(570,1290,"Creating New Account...");}
else if(SigningIn == 1)
{draw_text(555,1290,"Attempting Sign-In...");}
else if(SignInFail == 1)
{draw_text(555,1290,"Sign In Failed");}
else if(CreateAccountFail == 1)
{draw_text(570,1290,"Create Account Failed");}