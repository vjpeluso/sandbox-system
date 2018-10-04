/// @description 
draw_self();
draw_set_font(font_shop_big);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_color(c_black);
draw_text(x-2,y-122,"Current\n"+string(global.cash));
draw_set_color(c_yellow);
draw_text(x,y-120,"Current\n"+string(global.cash));