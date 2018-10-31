/// @descr Draw Message
if (to_draw != "")
{
	var xx = room_width/2;
	var yy = 600;
	var padding=10;
	var border_size = 2;
	var width = string_width(to_draw) + padding *2 //width of message
	var height = string_height(to_draw) + padding *2; //draw border
	draw_set_color(c_blue);
	draw_roundrect(xx-(width/2) -border_size,
	yy-(height/2)-border_size,xx+(width/2)+border_size,yy+(height/2)+border_size,
	false);
	//draw main message background
	draw_set_color(c_aqua);
	draw_roundrect(xx-(width/2),
	yy-(height/2),xx+(width/2),yy+(height/2),false);
	//draw a message
	draw_set_font(font_message2);
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	draw_set_color(c_red);
	draw_text(xx+1,yy+1,show_text);
	draw_set_color(c_black);
	draw_text(xx,yy,show_text);
}
