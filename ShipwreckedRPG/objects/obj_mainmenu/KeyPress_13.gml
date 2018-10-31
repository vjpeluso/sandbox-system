/// @description 
switch (menu_index)
{
	case 0:
	show_debug_message("NEW MENU");
	room_goto(cs_1);
	break;
	
	case 1:
	show_debug_message("ROOM MENU");
	room_goto(room_jumpto);
	break;
	
	case 2:
	show_debug_message("OPTIONS MENU");
	room_goto(room_options);
	
	case 3:
	show_debug_message("END MENU");
	game_end();
	break;
}
