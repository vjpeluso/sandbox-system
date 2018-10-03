/// @desc Message

draw_self();
draw_set_font(font_message_big);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_color(c_black);
draw_text(x,y,global.diag[global.message,1]);