/// @desc Set flag
destroy = true;
if (destroy)
{
	fading -= 0.02;
}
if (fading < 0) instance_destroy();
