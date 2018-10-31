/// @desc Draw Message
if(to_draw != "")
{
	draw_set_alpha(0.5);
	//set up
	var xx = 350;
	var yy = 250;
	var padding=10;
	var border_size = 2;
	var width = string_width(to_draw) + padding *2;
	var height = string_height(to_draw) + padding *2;
	//draw background sprite
	draw_sprite(spr_message_hud_bg,0,xx,yy);
	
	//draw message border
	draw_set_color(c_blue);
	draw_roundrect(xx-(width/2)-border_size,
	yy-(height/2)-border_size,xx+(width/2)-border_size,
	yy+(height/2)-border_size,false);
	
	//draw a message
	draw_set_font(font_message2);
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	draw_set_color(c_red);
	draw_text(xx+1,yy+1,show_text);
	draw_set_color(c_black);
	draw_text(xx,yy,show_text);
	draw_set_alpha(1);
	
	
	
}