/// @desc Draw Inventory Buttons
if (global.showInv)
{
	var item = global.inventory[slot];
	var click = mouse_check_button_pressed(mb_left);
	
	if (abs(mouse_x-x)<16) && (abs(mouse_y-y)<16)
	{
		draw_set_color(c_white);
		draw_set_alpha(0.8);
		draw_rectangle(x-16,y-16,x+16,y+16,0);
		if (click)
		{
			if (item!=-1)
			{
				scr_itemdrop_slot(slot);
			}
			if (global.mouseItem!= -1)
			{
				scr_itempickup_slot(global.mouseItem,slot);
			}
			global.mouseItem = item;
		}
	}
	if (item!= -1)
	{
		draw_sprite(spr_items,item,x,y);
	}
}
