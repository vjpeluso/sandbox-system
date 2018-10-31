/// @description 
//draw self
draw_self();
//background
draw_set_color(c_red);
draw_rectangle(x-50,y-70,x+50,y-65,false);
//draw invincibility bar
draw_set_color(c_green);
draw_rectangle(x-50,y-70,x-50+invincible_tmr,y-65,false);
