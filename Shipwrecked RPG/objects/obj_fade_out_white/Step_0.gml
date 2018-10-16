//change  and test alpha
alpha += 0.2;
if (alpha >= 1 ) //&& (room_exists(room_next(room)))
{
	room_goto_next();
	if !(room_exists(room_next(room)))
	{
		room_goto(room_start);
	}
	
}


