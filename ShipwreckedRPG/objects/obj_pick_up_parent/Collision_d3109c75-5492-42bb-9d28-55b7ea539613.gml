/// @description Keypress and Empty slot check
if(keyboard_check_pressed(ord("P")))
{
	if scr_itempickup(my_id)//if slot available, add to slot
	{
	instance_destroy();
	show_message("Picked Up Key!");
	}
	else 
	{

		switch (global.inventory[0])
		{
			case 1:
			instance_create_layer(obj_player_world.x+50,obj_player_world.y,layer,obj_brown_key);
			break;
		
			case 2:
			instance_create_layer(obj_player_world.x+50,obj_player_world.y,layer,obj_red_key);
			break;
		
			case 3:
			instance_create_layer(obj_player_world.x+50,obj_player_world.y,layer,obj_green_key);
			break;
			global.inventory[0] = -1;
			scr_itempickup(my_id);
			instance_destroy();
		}
	}
}
	