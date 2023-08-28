/// @description Insert description here
// You can write your code in this editor
if(global.UltimateActive == 0 && x < 2000 && other.lasered == 0)
{
instance_create_layer(x+120,y,"Explosion",oLaserExplosion1);
instance_destroy();
}