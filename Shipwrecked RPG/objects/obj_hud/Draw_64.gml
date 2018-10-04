/// @description HUD
///draw hp
//player hp
draw_rectangle_color(334,10,334-(global.p1hp*2),30,c_green,c_red,c_red,c_green,false);
draw_set_color(c_red);
draw_rectangle(334,10,334-200,30,true);

//enemy hp
draw_rectangle_color(434,10,434+(global.enemyhp*2),30,c_red,c_green,c_green,c_red,false);
draw_set_color(c_red);
draw_rectangle(434,10,434+200,30,true);

//draw text
draw_set_font(font_mini);
draw_set_color(c_black);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_text(234,20,"Player HP");
draw_text(534,20,"Enemy HP");

draw_text(room_width/2,640,"How to Play: Left/right arrow keys to move. Up arrow to fire.Shoot Enemy (when jumping)\nCollect Fruit - Avoid Bombs");
