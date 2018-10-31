/// @desc Draw Inventory 
if (global.showInv)
{	
	var x1,x2,y1,y2;
	x1 = view_xport[0] + 75;
	x2 = x1+view_wport[0];
	y1 = view_yport[0]+30;
	y2 = y1 + 64;
	
	draw_set_font(font_message2);
	draw_set_color(c_white);
	draw_set_alpha(1);
	draw_sprite(spr_inv_bg,0,x1-50,y1+15);
	
	for (var i = 0; i < global.maxItems; i+=1)
	{
		var ix = x1+24+(i*40);
		var iy = y2-24;
		
		draw_sprite(spr_border,0,ix,iy);
		button[i].x = ix;
		button[i].y = iy;
	}
	draw_text(x1+100,y1+100,"V to show/hide - click and Drag Items with Mouse \nP to pick up item\nPick Up Bag for extra room to store items");
	
}

