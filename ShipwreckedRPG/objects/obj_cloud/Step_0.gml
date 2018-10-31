if (x>room_width+64)
{
	x =-64; //set cloud position to left, outside viewport
	sw += 0.1 //for sine wave - ie. speed
	angle = sin(sw) *move_angle; // for sine wave
	image_angle = angle; //updates the image angle
}