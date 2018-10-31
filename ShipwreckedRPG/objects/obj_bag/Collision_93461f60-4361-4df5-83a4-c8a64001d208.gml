/// @desc
if(keyboard_check_pressed(ord("P")))
{
	global.maxItems+=4;	//add 4 inventory slots
	instance_destroy();
}
