/// @description Insert description here
// You can write your code in this editor
if(global.UltimateActive == 0 && x < 2100)
{
instance_create_layer(x+50,y,"Explosion",oLaserExplosion1);
instance_destroy();
}