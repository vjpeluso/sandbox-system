/// @desc Draw Inventory 	
var x1,x2,y1,y2;
x1 = view_xport[0] + 75;
x2 = x1+view_wport[0];
y1 = view_yport[0]+30;
y2 = y1 + 64;
	
draw_set_color(c_black);
draw_set_alpha(0.8);
draw_sprite(spr_inv_bg2,0,x1,y1-25);
	
for (var i = 0; i < global.maxItems; i+=1)
{
	var ix = x1+64+(i*60);
	var iy = y2-48;
		
	draw_sprite(spr_border,0,ix,iy);
	button[i].x = ix;
	button[i].y = iy;
}
draw_text(x1+100,y1+200,"P to Pick Up an Item when touching\nClick and Drag to Move & Use\nRight Click to Drop");
	

