draw_self();
draw_text_color(obj_player_world.x +1 , obj_player_world.y - 61, message,c_black,c_black,c_black,c_black,1);
draw_text_color(obj_player_world.x,obj_player_world.y - 60,message,c_maroon, c_maroon, c_red, c_red, 1);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_font(font_message);