/// @description Insert description here
// You can write your code in this editor
if (global.uCatStart = 1)
{CatStartCounter = 2;}
else{CatStartCounter = 0;}

config_select = 0;
enemy_create = 1;
enemy_sprites = [sEnemy1, sEnemy2, sEnemy3, sEnemy4, sEnemy5, sEnemy6, sEnemy7, sEnemy8];
enemy_sprite_selection = 0;

cat_skins = [sCat, sBorderCollie, sDalmatian, sChihuaua, sMountainDog, sRetriever];
cat_skin_select = 0;
dog_spawn = 0;

if(global.difficulty > 0)
{
config_select_num = 27;
room_create_num = 2150;
	
tile_config_x[0] = [1856,1984,2112,2848,2976,3104,2848,2976,3104];
tile_config_y[0] = [960,960,960,960,960,960,416,416,416];
enemy_config_x[0] = [2112,3104,3104];
enemy_config_y[0] = [960-64,960-64,416-64];
cat_config_x[0] = [3104];
cat_config_y[0] = [416-64];

tile_config_x[1] = [1824,1952,2080,2208,2336,2464,2592,2720,2848,2976,3104,2336,2464,2592,2336,2464,2592];
tile_config_y[1] = [640,640,640,640,640,640,640,640,640,640,640,512,512,512,1120,1120,1120];
enemy_config_x[1] = [3104,2592];
enemy_config_y[1] = [640-64,512-64];
cat_config_x[1] = [2848,2592];
cat_config_y[1] = [640-64,1120-64];

tile_config_x[2] = [1888,1888,1888,1888,1888,2016,2144,2272,2400,2528,2528,2528,2528,2528,2656,2784,2912,3040];
tile_config_y[2] = [320,448,576,704,1120,1120,1120,1120,1120,1120,64,192,864,992,864,864,864,864];
enemy_config_x[2] = [2912];
enemy_config_y[2] = [864-64];
cat_config_x[2] = [1888,2400];
cat_config_y[2] = [320-64,1120-64];

//Devils Horseshoe
tile_config_x[3] = [2016,2144,2720,2848,2976,3104,1888,2016,2144,2272,2720,2848,2976,3104,2720,2720,2848,2976,3104];
tile_config_y[3] = [1120,1120,1120,1120,1120,1120,640,640,640,640,640,640,640,640,512,384,384,384,384];
enemy_config_x[3] = [3104,2976];
enemy_config_y[3] = [1120-64,384-64];
cat_config_x[3] = [2144,2976];
cat_config_y[3] = [1120-64,2976-64];

tile_config_x[4] = [2016,2592,3136,1888,2016,2720,2848,1888,2016,2976,3104,2528,2400];
tile_config_y[4] = [256,256,256,640,640,640,640,1120,1120,1120,1120,992,992];
enemy_config_x[4] = [2016,2848,2528];
enemy_config_y[4] = [640-64,640-64,992-64];
cat_config_x[4] = [3136];
cat_config_y[4] = [256-64];

tile_config_x[5] = [1792,1920,2048,2176,2304,2432,2560,2688,2816,2944,3072,2200,2200,2944,2944];
tile_config_y[5] = [1120,1120,1120,1120,1120,1120,1120,1120,1120,1120,1120,224,352,480+32,608+32];
enemy_config_x[5] = [2688,2944];
enemy_config_y[5] = [1120-64,480-32];
cat_config_x[5] = [2200,2944];
cat_config_y[5] = [224-64,480-32];

tile_config_x[6] = [1920,1920,2048,2176,2304,1920,2048,2176,2304,2816,2944,3072,2816,2944,3072];
tile_config_y[6] = [352,864,864,864,864,992,992,992,992,448,448,448,960,960,960];
enemy_config_x[6] = [1920,3072];
enemy_config_y[6] = [864-64,960-64];
cat_config_x[6] = [1920,2944];
cat_config_y[6] = [352-64,448-64];

tile_config_x[7] = [1920,2048,2176,2304,1920,2048,2176,2304,3008,3136,2624,2752,2880,3008,3136];
tile_config_y[7] = [352,352,352,352,960,960,960,960,576,576,1120,1120,1120,1120,1120];
enemy_config_x[7] = [1920,3136,3008];
enemy_config_y[7] = [960-64,1120-64,576-64];
cat_config_x[7] = [3136,3008];
cat_config_y[7] = [1120-64,576-64];

tile_config_x[8] = [1888,2016,2144,1888,2016,2144,1888,2016,2144,2816,2944,3072,2720,2848,2976,3104,3232,3360,3360,2816,2944,3072,2816,2944,3072];
tile_config_y[8] = [512,512,512,640,640,640,768,768,768,512,512,512,1120,1120,1120,1120,1120,1120,992,640,640,640,768,768,768];
enemy_config_x[8] = [1888,2944];
enemy_config_y[8] = [512-64,512-64];
cat_config_x[8] = [2976];
cat_config_y[8] = [1120-64];

tile_config_x[9] = [1920,2048,2464,2592,2720,3072,3200,3328,2624,2752,2880,3008,3136,3264];
tile_config_y[9] = [1120,992,544,416,288,448,448,448,1056,1056,1056,1056,1056,1056];
enemy_config_x[9] = [3008];
enemy_config_y[9] = [1056-64];
cat_config_x[9] = [2720,3072];
cat_config_y[9] = [288-64,448-64];

tile_config_x[10] = [1664,1792,1920,2048,2176,2304,2816,2944,3072,3200,3328,1664,1792,2176,2304,2432,2560,2688,2816,2944,3072,2816,2944];
tile_config_y[10] = [800,800,800,800,800,800,800,800,800,800,800,384,384,384,384,384,384,384,384,384,384,256,256];
enemy_config_x[10] = [2176,2816];
enemy_config_y[10] = [800-64,800-64];
cat_config_x[10] = [2816];
cat_config_y[10] = [256-64];

tile_config_x[11] = [1792+64,1792+64,1792+64,2336+64,2336+64,1984-256,1984-128,1984,2112,2240,2816,2944,3072,2528,2528,3072,3200,3072,3200];
tile_config_y[11] = [288,416,544,32,160,1024,1024,1024,1024,1024,1024,1024,1024,576+32,704+32,576+32,576+32,192,192];
enemy_config_x[11] = [2816,3200];
enemy_config_y[11] = [1024-64,576-32];
cat_config_x[11] = [3200];
cat_config_y[11] = [192-64];

tile_config_x[12] = [2048,2176,2304,2432,2560,2688,2816,2944,3072,2048,3072,2432,2560,2688,2048,2176,2304,2432,2560,2688,2816,2944,3072];
tile_config_y[12] = [416,416,416,416,416,416,416,416,416,544,544,1120,1120,1120,672,672,672,672,672,672,672,672,672];
enemy_config_x[12] = [2176,2560];
enemy_config_y[12] = [416-64,416-64];
cat_config_x[12] = [2560];
cat_config_y[12] = [1120-64];

tile_config_x[13] = [2720,2272,2272,3232,3232,2080,2208,2336,2464,2976,3104,3232,3360];
tile_config_y[13] = [224,480+64,608+64,480+64,608+64,1056,1056,1056,1056,1056,1056,1056,1056];
enemy_config_x[13] = [3232,2336,3104];
enemy_config_y[13] = [480,1056-64,1056-64];
cat_config_x[13] = [2720,3232];
cat_config_y[13] = [224-64,480];

tile_config_x[14] = [2304-128,2304-128,2304-128,2304,2432,2848+256,2848+256,2848+256,2848+256,2976+256,2976+256,2976+256,2976+256];
tile_config_y[14] = [416-128,544-128,1024,1024,1024,224,352,786,896,224,352,786,896];
enemy_config_x[14] = [2304,2976+256];
enemy_config_y[14] = [1024-64,786-64];
cat_config_x[14] = [2304-128,2976+256];
cat_config_y[14] = [416-64-128,224-64];

tile_config_x[15] = [2656,2656,3136+128,2144-128,2272-128,2400-128,2944,3072,2944,3072,2944,3072,3200,3328];
tile_config_y[15] = [-32,96,192,704,704,704,544,544,672,672,1088,1088,1088,1088];
enemy_config_x[15] = [3072,3072];
enemy_config_y[15] = [544-64,1088-64];
cat_config_x[15] = [3136+128];
cat_config_y[15] = [192-64];

tile_config_x[16] = [2048,2176,2304,2432,2560,2688,2048,2176,2304,2048,2176,2304,2432,2560,2688,2816,2944,3072,3200,3328,3456,2816,2944,3072,3328,3456];
tile_config_y[16] = [256,256,256,256,256,256,672,672,672,1080,1080,1080,1080,1080,1080,1080,1080,1080,1080,1080,1080,960,960,960,608,608];
enemy_config_x[16] = [2304,3328,2048];
enemy_config_y[16] = [672-64,608-64,1088-64];
cat_config_x[16] = [2560,3456];
cat_config_y[16] = [256-64,1088-64];

tile_config_x[17] = [1920,2048,2176,2304,2432,2560,2688,2816,2944,3072,3200,3328,2560,2688,2816,2560,2688,2816,2560,2688,2816];
tile_config_y[17] = [1088,1088,1088,1088,1088,1088,1088,1088,1088,1088,1088,1088,832,832,832,960,960,960,288,288,288];
enemy_config_x[17] = [2688];
enemy_config_y[17] = [832-64];
cat_config_x[17] = [2688];
cat_config_y[17] = [288-64];

tile_config_x[18] = [1920,2048,2176,2560,2688,2816,2944,3072,3200,3328,2688,2816,2944];
tile_config_y[18] = [1088,1088,1088,1088,1088,1088,1088,1088,1088,1088,640,640,640];
enemy_config_x[18] = [2816];
enemy_config_y[18] = [1088-64];
cat_config_x[18] = [2816];
cat_config_y[18] = [640-64];

tile_config_x[19] = [2048,2176,2304,2432,2048,2176,2304,2432,2848,2976,3104,3232,2848,2976,3104,3232,2528,2656,2784];
tile_config_y[19] = [960,960,960,960,1088,1088,1088,1088,960,960,960,960,1088,1088,1088,1088,288,288,288];
enemy_config_x[19] = [2432,2976];
enemy_config_y[19] = [960-64,960-64];
cat_config_x[19] = [2656]
cat_config_y[19] = [288-64];

tile_config_x[20] = [2048,2176,2304,2432,2560,2688,2816,2944,3072,2048,2176,2304,2432,2560,2688,2816,2944,3072,2560,2688,2816,2624,2624,2624];
tile_config_y[20] = [1088,1088,1088,1088,1088,1088,1088,1088,1088,960,960,960,960,960,960,960,960,960,832,832,832,0,128,256];
enemy_config_x[20] = [2688,2176];
enemy_config_y[20] = [832-64,960-64];
cat_config_x[20] = [2432];
cat_config_y[20] = [960-64];

tile_config_x[21] = [2048,2176,2304,2816,2944,3072,2048,2176,2304,2816,2944,3072,2048,2176,2304,2816,2944,3072,3072,2624,2624];
tile_config_y[21] = [832,832,832,832,832,832,960,960,960,960,960,960,1088,1088,1088,1088,1088,1088,256,0,128];
enemy_config_x[21] = [2176,2944];
enemy_config_y[21] = [832-64,832-64];
cat_config_x[21] = [3072];
cat_config_y[21] = [256-64];

tile_config_x[22] = [2048,2176,2304,2432,2560,2688,2816,2944,3072];
tile_config_y[22] = [1088,960,832,704,576,448,448,448,448];
enemy_config_x[22] = [2816];
enemy_config_y[22] = [448-64];
cat_config_x[22] = [2176];
cat_config_y[22] = [960-64];

tile_config_x[23] = [2048,2176,2304,2048,2176,2304,2176,2176,2656,2656,2656,2656,2656,2656,2784,2656,2912,2912,2784,2912,3040];
tile_config_y[23] = [1088,1088,1088,960,960,960,288,416,-32,576,704,832,960,1088,-32,-32,-32,96,576,576,576];
enemy_config_x[23] = [2912];
enemy_config_y[23] = [576-64];
cat_config_x[23] = [2176];
cat_config_y[23] = [288-64];

tile_config_x[24] = [2176,2176,2176,2304,2336,2336,2656,2784,2912,3104,3232,3072,3200,2656,2784,2912];
tile_config_y[24] = [832,960,1088,832,0,128,576,576,576,192,192,1088,1088,704,704,704];
enemy_config_x[24] = [2784];
enemy_config_y[24] = [576-64];
cat_config_x[24] = [3232];
cat_config_y[24] = [192-64];

tile_config_x[25] = [1920,2048,2176,2304,2432,2560,2688,2816,2944,3072,3200,3328,2240,3168,2688,2688,2688];
tile_config_y[25] = [1088,1088,1088,1088,1088,1088,1088,1088,1088,1088,1088,1088,480,480,224,352,480];
enemy_config_x[25] = [2688];
enemy_config_y[25] = [1088-64];
cat_config_x[25] = [2240,3168];
cat_config_y[25] = [480-64,480-64];

tile_config_x[26] = [2048,2048,2048,2304,2432,2560,2688,2816,2944,3072,2176,2304,3072,3200,3328,2304,3072,3328,3328,2688,2688];
tile_config_y[26] = [832,960,1088,1088,1088,1088,1088,1088,1088,1088,832,832,832,832,832,960,960,960,1088,-32,96];
enemy_config_x[26] = [3072];
enemy_config_y[26] = [832-64];
cat_config_x[26] = [2944];
cat_config_y[26] = [1088-64];

tile_config_x[27] = [2048,2176,2304,2048,2176,2304,2048,2176,2304,2592,2720,2848,2592,2720,2848,2592,2720,2848,2976,3104,3232];
tile_config_y[27] = [832,832,832,960,960,960,1088,1088,1088,480,480,480,608,608,608,736,736,736,736,736,736];
enemy_config_x[27] = [2720];
enemy_config_y[27] = [480-64];
cat_config_x[27] = [3232];
cat_config_y[27] = [736-64];


}

else
{
config_select_num = 10;
room_create_num = 1800;
	
tile_config_x[0] = [1920,2048,2176,2304,2432,2560,2688,2816,2944,3072,3200,3328,2560,2688,2816,2560,2688,2816,2560,2688,2816];
tile_config_y[0] = [1088,1088,1088,1088,1088,1088,1088,1088,1088,1088,1088,1088,832,832,832,960,960,960,288,288,288];
enemy_config_x[0] = [2688];
enemy_config_y[0] = [832-64];
cat_config_x[0] = [2688];
cat_config_y[0] = [288-64];

tile_config_x[1] = [1920,2048,2176,2560,2688,2816,2944,3072,3200,3328,2688,2816,2944];
tile_config_y[1] = [1088,1088,1088,1088,1088,1088,1088,1088,1088,1088,640,640,640];
enemy_config_x[1] = [2816];
enemy_config_y[1] = [1088-64];
cat_config_x[1] = [2816];
cat_config_y[1] = [640-64];

tile_config_x[2] = [2048,2176,2304,2432,2048,2176,2304,2432,2848,2976,3104,3232,2848,2976,3104,3232,2528,2656,2784];
tile_config_y[2] = [960,960,960,960,1088,1088,1088,1088,960,960,960,960,1088,1088,1088,1088,288,288,288];
enemy_config_x[2] = [2432,2976];
enemy_config_y[2] = [960-64,960-64];
cat_config_x[2] = [2656]
cat_config_y[2] = [288-64];

tile_config_x[3] = [2048,2176,2304,2432,2560,2688,2816,2944,3072,2048,2176,2304,2432,2560,2688,2816,2944,3072,2560,2688,2816,2624,2624,2624];
tile_config_y[3] = [1088,1088,1088,1088,1088,1088,1088,1088,1088,960,960,960,960,960,960,960,960,960,832,832,832,0,128,256];
enemy_config_x[3] = [2688,2176];
enemy_config_y[3] = [832-64,960-64];
cat_config_x[3] = [2432];
cat_config_y[3] = [960-64];

tile_config_x[4] = [2048,2176,2304,2816,2944,3072,2048,2176,2304,2816,2944,3072,2048,2176,2304,2816,2944,3072,3072,2624,2624];
tile_config_y[4] = [832,832,832,832,832,832,960,960,960,960,960,960,1088,1088,1088,1088,1088,1088,256,0,128];
enemy_config_x[4] = [2176,2944];
enemy_config_y[4] = [832-64,832-64];
cat_config_x[4] = [3072];
cat_config_y[4] = [256-64];

tile_config_x[5] = [2048,2176,2304,2432,2560,2688,2816,2944,3072];
tile_config_y[5] = [1088,960,832,704,576,448,448,448,448];
enemy_config_x[5] = [2816];
enemy_config_y[5] = [448-64];
cat_config_x[5] = [2176];
cat_config_y[5] = [960-64];

tile_config_x[6] = [2048,2176,2304,2048,2176,2304,2176,2176,2656,2656,2656,2656,2656,2656,2784,2656,2912,2912,2784,2912,3040];
tile_config_y[6] = [1088,1088,1088,960,960,960,288,416,-32,576,704,832,960,1088,-32,-32,-32,96,576,576,576];
enemy_config_x[6] = [2912];
enemy_config_y[6] = [576-64];
cat_config_x[6] = [2176];
cat_config_y[6] = [288-64];

tile_config_x[7] = [2176,2176,2176,2304,2336,2336,2656,2784,2912,3104,3232,3072,3200,2656,2784,2912];
tile_config_y[7] = [832,960,1088,832,0,128,576,576,576,192,192,1088,1088,704,704,704];
enemy_config_x[7] = [2784];
enemy_config_y[7] = [576-64];
cat_config_x[7] = [3232];
cat_config_y[7] = [192-64];

tile_config_x[8] = [1920,2048,2176,2304,2432,2560,2688,2816,2944,3072,3200,3328,2240,3168,2688,2688,2688];
tile_config_y[8] = [1088,1088,1088,1088,1088,1088,1088,1088,1088,1088,1088,1088,480,480,224,352,480];
enemy_config_x[8] = [2688];
enemy_config_y[8] = [1088-64];
cat_config_x[8] = [2240,3168];
cat_config_y[8] = [480-64,480-64];

tile_config_x[9] = [2048,2048,2048,2304,2432,2560,2688,2816,2944,3072,2176,2304,3072,3200,3328,2304,3072,3328,3328,2688,2688];
tile_config_y[9] = [832,960,1088,1088,1088,1088,1088,1088,1088,1088,832,832,832,832,832,960,960,960,1088,-32,96];
enemy_config_x[9] = [3072];
enemy_config_y[9] = [832-64];
cat_config_x[9] = [2944];
cat_config_y[9] = [1088-64];

tile_config_x[10] = [2048,2176,2304,2048,2176,2304,2048,2176,2304,2592,2720,2848,2592,2720,2848,2592,2720,2848,2976,3104,3232];
tile_config_y[10] = [832,832,832,960,960,960,1088,1088,1088,480,480,480,608,608,608,736,736,736,736,736,736];
enemy_config_x[10] = [2720];
enemy_config_y[10] = [480-64];
cat_config_x[10] = [3232];
cat_config_y[10] = [736-64];
}