/// @description 
switch (menu_index)
{
	case 0:
	show_debug_message("ROOM START - subMENU");
	room_goto(room_start);
	break;
	
	case 1:
	room_goto(room_pathfindingAI);
	show_debug_message("ROOM AI - subMENU");
	break;
	
	case 2:
	room_goto(room_hud_test);
	show_debug_message("HUD ROOM - subMENU");
	break;
	
	case 3:
	room_goto(room_inventory_test);
	show_debug_message("INVENTORY ROOM - subMENU");
	break;
	
	case 4:
	room_goto(room_mini_quest);
	show_debug_message("QUESTION ROOM - subMENU");
	break;
	
	case 5:
	show_debug_message("BACK MENU");
	room_goto(room_main);
}
