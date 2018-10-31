/// @desc KEYPRESS
if (keyboard_check_pressed(vk_space)) 
{
	if (room_exists(room_next(room)))
	{
		room_goto_next();
	}
	
	else 
	{
		isLastRoom = true;
		room_goto(room_start);
	}
}
if (keyboard_check_pressed(vk_enter)) room_goto(cs_10);
