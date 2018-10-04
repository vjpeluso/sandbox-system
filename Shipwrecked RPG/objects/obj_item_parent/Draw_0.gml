/// @description 
draw_self();

//draw data from array using myid from child object
draw_set_font(font_shop_mini);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_color(c_black);
draw_text(x,y-72,global.inventory[myid,1]);
draw_sprite(global.inventory[myid,2],0,x,y-30);
draw_set_color(c_yellow);
draw_text(x,y+15,string(global.inventory[myid,3])+" Coins");
draw_set_color(c_black);
draw_text(x,y+40,string(global.inventory[myid,4])+" / " +string(global.inventory[myid,5]));