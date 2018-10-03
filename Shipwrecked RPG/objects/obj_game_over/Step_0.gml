/// @description 
if (global.message == "You are \nVictorious")
{
	win = true;
	lose = false;
	if (keyboard_check(vk_enter))
	{
		room_goto(room_first);

	}
}
else 
{
	lose = true;
	win = false;
	if (keyboard_check(ord("R")))
	{
		room_goto(room_first);
	}
}
