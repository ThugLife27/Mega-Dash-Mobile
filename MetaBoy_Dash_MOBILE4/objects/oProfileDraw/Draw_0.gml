/// @description Insert description here
// You can write your code in this editor

if(global.PlayerProfile.Stats.UniqueBossesDefeated[0] == 1)
{
	draw_sprite(sProbert,image_index,145,680);
}
else
{
	shader_set(shBlack);
	draw_sprite(sProbert,image_index,145,680);
	shader_reset();
	draw_sprite_ext(sQuestionMark,0,145,590,.5,.5,0,c_white,1);
}

if(global.PlayerProfile.Stats.UniqueBossesDefeated[1] == 1)
{
	draw_sprite(sThugLife,image_index,370,680);
}
else
{
	shader_set(shBlack);
	draw_sprite(sThugLife,image_index,370,680);
	shader_reset();
	draw_sprite_ext(sQuestionMark,0,370,590,.5,.5,0,c_white,1);
}

if(global.PlayerProfile.Stats.UniqueBossesDefeated[2] == 1)
{
	draw_sprite(sPfizer,image_index,630,680);
}
else
{
	shader_set(shBlack);
	draw_sprite(sPfizer,image_index,630,680);
	shader_reset();
	draw_sprite_ext(sQuestionMark,0,630,590,.5,.5,0,c_white,1);
}

if(global.PlayerProfile.Stats.UniqueBossesDefeated[3] == 1)
{
	draw_sprite(sAdam,image_index,880,680);
}
else
{
	shader_set(shBlack);
	draw_sprite(sAdam,image_index,880,680);
	shader_reset();
	draw_sprite_ext(sQuestionMark,0,880,590,.5,.5,0,c_white,1);
}

if(global.PlayerProfile.Stats.UniqueBossesDefeated[4] == 1)
{
	draw_sprite(sBTCBoy,image_index,1130,680);
}
else
{
	shader_set(shBlack);
	draw_sprite(sBTCBoy,image_index,1130,680);
	shader_reset();
	draw_sprite_ext(sQuestionMark,0,1130,590,.5,.5,0,c_white,1);
}

if(global.PlayerProfile.Stats.UniqueBossesDefeated[5] == 1)
{
	draw_sprite_ext(sSatoshiGiant,0,1390,590,275/800,275/800,0,c_white,1);
	draw_sprite_ext(sSatoshiCoin,image_index,1310,587,275/800,275/800,0,c_white,1);
}
else
{
	shader_set(shBlack);
	draw_sprite_ext(sSatoshiGiant,0,1390,590,275/800,275/800,0,c_white,1);
	draw_sprite_ext(sSatoshiCoin,image_index,1310,587,275/800,275/800,0,c_white,1);
	shader_reset();
	draw_sprite_ext(sQuestionMark,0,1390,590,.5,.5,0,c_white,1);
}
	






