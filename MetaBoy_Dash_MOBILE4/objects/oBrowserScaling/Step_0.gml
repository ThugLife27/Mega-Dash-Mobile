/// @description Insert description here
// You can write your code in this editor

if (browser_width != width || browser_height != height)
    {
    width = min(base_width, browser_width);
    height = min(base_height, browser_height);
   
    bw = base_width;
	bh = base_height;
	cw = width;
	ch = height;
	center = true;
	aspect = (bw / bh);

	if ((cw / aspect) > ch)
	    {
	    window_set_size((ch *aspect), ch);
	    }
	else
	    {
	    window_set_size(cw, (cw / aspect));
	    }
	if (center)
	    {
	    window_center();
	    }
    }

surface_resize(application_surface, min(window_get_width(), bw), min(window_get_height(), bh));

if(global.BossBaitUnlock == 0)
{
global.gametime++;
if(global.gametime >= 108000)
{global.BossBaitUnlock = 1;}
}

//Leaderboard Security
if(scoretotal_new > (scoretotal + 80000))
{SecTrip = 1;}

scoretotal = scoretotal_new;

if(global.Round1_Score != R1Score)
{SecTrip = 1;}
if(global.Round2_Score != R2Score)
{SecTrip = 1;}
if(global.Round3_Score != R3Score)
{SecTrip = 1;}
if(global.Round4_Score != R4Score)
{SecTrip = 1;}



