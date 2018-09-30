/// @description Applies and updates motion
///rotate and check if outside room
sw += pi/30 //for sine wave - ie speed
angle = sin(sw) * move_angle; //for sine wave
image_angle = angle + 225;

///destroy off screen
if (y < 0) instance_destroy();

