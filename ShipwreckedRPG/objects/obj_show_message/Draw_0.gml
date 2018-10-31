/// @desc Message

draw_self();
draw_set_font(font_message_big); //set font
draw_set_halign(fa_center);	     //set horizontal alignment 
draw_set_valign(fa_middle);      //set vertical alignment
draw_set_color(c_black);		 //set color
draw_text(x,y,string(global.diag[global.message,1])); //draw current message