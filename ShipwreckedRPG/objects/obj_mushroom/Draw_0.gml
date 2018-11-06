///draw speech bubble/display text

draw_self();

///set text to draw
if(string_length(show_text) < string_length(text))
{
	show_text = string_copy(text,1,count);
	alarm[0] = room_speed * 4;
	count+=1;
	
}
if (show_text != "") //draw text bubble if text present
{
	//set vars
	var width = string_width(text) + padding * 2; //width of message
	var height = string_height(text) + padding * 2 //height of message
	
	//draw bits below first to create a border
	//round rectangle first
	draw_set_colour(c_blue);
	draw_roundrect(x-(width/2)-border_size,
	y-90-(height/2)-border_size,x+(width/2)+border_size,
	y-90+(height/2)+border_size,false);
	
	//triangle outline for triangle
	draw_line_width(x-(width/4)+border_size,y-90+(height/2)-border_size,x+border_size,y-25,border_size);
	draw_line_width(x,y-25,x-(width/2),y-90+(height/2),border_size);
	
	//draw the box
	draw_set_colour(c_white);
	draw_roundrect(x-(width/2),y-90-(height/2),x+(width/2),y-90+(height/2),false);
	//draw triangle to make it look like speech bubble.
	draw_triangle(
	x-(width/2)+2,y-90+(height/2),
	x-(width/4),y-90+(height/2),
	x,y-25,
	false);
	
	//draw the message
	draw_set_font(font_message1);
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	draw_set_colour(c_black);
	draw_text(x,y-90,show_text);
}


