/// @desc Check time/quest complete
if clock_time==0
{
	show_message("Out of Time");
	game_restart();
	if (instance_number(obj_chest)==0)
	{
		show_message("You were successful in your Quest!!!");
		game_end();
	}
}
