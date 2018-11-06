/// @desc Draw Inventory Buttons

var item = global.inventory[slot];
var click = mouse_check_button_pressed(mb_left);
	
if (abs(mouse_x-x)<30) && (abs(mouse_y-y)<38)
{
	draw_set_color(c_white)
	draw_rectangle(x-28,y-28,x+28,y+28,0);
	if (click)
	{
		if (item != -1)
		{
			scr_itemdrop_slot(slot);
		}
		if (global.mouseItem != -1)
		{
			scr_itempickup_slot(global.mouseItem,slot);
		}
		global.mouseItem = item;
	}
	if(mouse_check_button_pressed(mb_right))
	{
		switch (global.inventory[slot])
		{
		case 1:
		instance_create_depth(obj_player_world.x,obj_player_world.y,-1000,obj_brown_key);
		break;
		
		case 2:
		instance_create_depth(obj_player_world.x,obj_player_world.y,-1000,obj_red_key);
		break;
		
		case 3:
		instance_create_depth(obj_player_world.x,obj_player_world.y,-1000,obj_green_key);
		break;
		}
		//remove item from inventory
		global.inventory[slot] = -1;
	}
}
if(item!=-1)
{
	draw_sprite(spr_key_items,item,x,y);
}



