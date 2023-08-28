/// @description Insert description here
// You can write your code in this editor

if(SigningIn == 1 || CreatingAccount == 1)
{
	image_alpha = 0;
	if(instance_exists(oSkipGoogleSignIn))
	{oSkipGoogleSignIn.image_alpha = 0;}
	if(instance_exists(oLoadingCircle))
	{oLoadingCircle.image_alpha = 1;}
}
else
{
	image_alpha = 1;
	if(instance_exists(oSkipGoogleSignIn))
	{oSkipGoogleSignIn.image_alpha = 1;}
	if(instance_exists(oLoadingCircle))
	{oLoadingCircle.image_alpha = 0;}
}
	