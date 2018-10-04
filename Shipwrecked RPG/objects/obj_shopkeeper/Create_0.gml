/// @desc set up init values
img = 0;
is_talking = false;

#region Animation
//animating the head
if (is_talking) 
{
	img++;
}
if (is_talking) && (img == 30)
{
	img = 0;
	is_talking = false;
}
#endregion
