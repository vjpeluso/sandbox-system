/// @descr Adding Gold
draw_set_font(font_message_big);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_color(c_black);
draw_text(room_width/2,room_height-50,"Gold: " + string(global.gold));
