// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function ResetLBSecurity(){
if(instance_exists(oBrowserScaling))
{
	oBrowserScaling.SecTrip = 0;
	oBrowserScaling.scoretotal = 0;
	oBrowserScaling.scoretotal_new = 0;
	oBrowserScaling.R1Score = 0;
	oBrowserScaling.R2Score = 0;
	oBrowserScaling.R3Score = 0;
	oBrowserScaling.R4Score = 0;
}
}