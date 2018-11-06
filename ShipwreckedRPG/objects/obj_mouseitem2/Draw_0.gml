/// @desc set mouse position if Held
if (global.showInv) {
	var item= global.mouseItem;
	if (item!=-1)
	{
		x = mouse_x;
		y = mouse_y;
		draw_sprite(spr_items,item,x,y);
	}
}
