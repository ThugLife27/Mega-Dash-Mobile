/// @description Insert description here
// You can write your code in this editor

if(instance_exists(oSatoshi))
{
	x = oSatoshi.x - 400 + 177;
	y = oSatoshi.y - 400 + 417;
	image_alpha = oSatoshi.image_alpha;
	flash = oSatoshi.flash;
}
else
{instance_destroy();}




