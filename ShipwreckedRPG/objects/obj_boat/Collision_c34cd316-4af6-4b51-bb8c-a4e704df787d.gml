/// @description Enter boat
if (instance_exists(obj_player_world) && (keyboard_check_pressed(ord("X")))) //check keypress and player presence
//player present
{
	with (obj_player_world) 
	{
	instance_destroy();
	global.active = "Boat";
	}
}