/// @description Insert description here
// You can write your code in this editor

if(global.UltimateActive == 0 && cat_alive == 1)
{
	cat_alive = 0;
	if(sprite_index == sCat && !audio_is_playing(SoundCatTouch))
	{audio_play_sound(SoundCatTouch,10,false,2.5);}
	else if(sprite_index != sCat)
	{audio_play_sound(SoundDogTouch,10,false,1.2);}
	
	instance_create_layer(x+75,y-50,"Screens",oScoreBonus,{image_index : (1+dog)*(1+global.uBritBoy)*(4+global.multiplier)-1});
	global.scorebonus = global.scorebonus + (1+dog)*(1+global.uBritBoy)*(400 + 100*global.multiplier);
	
	if(sprite_index == sCat)
	{global.multiplier = global.multiplier + 3 + 2*global.uBritBoy;}
	else{global.multiplier = global.multiplier_max;}
	
	if(global.multiplier > global.multiplier_max){global.multiplier = global.multiplier_max;}
	
	if((global.uSuperSaiyan == 1 || global.uUltimate == 1) && global.multiplier >= 10 && global.UltimateComplete == 0)
	{global.UltimateCounter = global.UltimateCounter + 2;}
	
	switch(sprite_index)
	{
		case sCat:
			global.Pets[0] = sCat;
			global.CatUnlock = 1;
		break
		
		case sBorderCollie:
			global.Pets[1] = sBorderCollie;
			global.BorderCollieUnlock = 1;
		break
		
		case sChihuaua:
			global.Pets[2] = sChihuaua;
			global.ChihuauaUnlock = 1;
		break
		
		case sMountainDog:
			global.Pets[3] = sMountainDog;
			global.MountainDogUnlock = 1;
		break
		
		case sDalmatian:
			global.Pets[4] = sDalmatian;
			global.DalmatianUnlock = 1;
		break
		
		case sRetriever:
			global.Pets[5] = sRetriever;
			global.RetrieverUnlock = 1;
		break
	}
}





