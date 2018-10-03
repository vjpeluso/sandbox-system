///move to position slot
move_towards_point(64*slot,y,4);
//stop
if (x == 64*slot)
{
	dir = "idle";
	speed = 0;
}

///sprite control
if (sprite_index == spr_pirate_jump) && (image_index >= 15)
{
	sprite_index = spr_pirate_idle;
	image_index = 0;
	image_speed = 1;
}