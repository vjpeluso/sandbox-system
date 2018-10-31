draw_self();
draw_text_color(obj_player_world.x +1 , obj_player_world.y - 80, message,c_black,c_black,c_black,c_black,1);
draw_text_color(obj_player_world.x,obj_player_world.y - 79,message,c_white, c_white, c_white, c_white, 1);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_font(font_message2);