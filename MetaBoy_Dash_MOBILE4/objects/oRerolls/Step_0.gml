/// @description Insert description here
// You can write your code in this editor

if(global.RerollCount == 0 && !instance_exists(oRerollAd))
{instance_create_layer(x,y+245,"Instances",oRerollAd);}

if(global.RerollCount > 0 && instance_exists(oRerollAd))
{instance_destroy(oRerollAd);}