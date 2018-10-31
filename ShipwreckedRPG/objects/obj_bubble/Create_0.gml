/// @description set up vars
//create a bubble
sprite_index = choose(spr_bubble_1,spr_bubble_2);
ang = 0;
sw = 0;
move_angle = 5+irandom(10);
base = irandom_range(100,700);
x = base;
y = room_height+32;

scale = irandom_range(1,20);
scale*= 0.1;
image_xscale = scale;
image_yscale = scale;
motion_set(90, 1+scale);
depth = choose(6,-7);