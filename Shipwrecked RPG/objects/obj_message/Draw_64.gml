/// @desc Draw Typerwriter text effect
draw_set_alpha(fading);
draw_sprite(spr_parchment, 0, room_width/2,700);
draw_set_font(font_text_cs);
draw_set_color(c_white);
draw_text(x+1, y+1, typewriter_out); //Draw string to screen
draw_text(x+1, y-1, typewriter_out);
draw_text(x-1, y+1, typewriter_out);
draw_text(x-1, y-1, typewriter_out);
draw_set_color(c_black);
draw_text(x,y,typewriter_out);
draw_set_alpha(1);