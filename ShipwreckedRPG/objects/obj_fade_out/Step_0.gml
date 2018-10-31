//change  and test alpha
alpha += 0.02;
if (alpha >= 1 ) 
{
	if !(room_exists(room_next(room)))
	{
		room_goto(room_start);
	}
	else room_goto_next();
	
}


