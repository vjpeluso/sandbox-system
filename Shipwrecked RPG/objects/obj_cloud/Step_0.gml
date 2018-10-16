///make cloud wobble
if x > room_width+64 x = -64;
sw += 0.1;
angle = sin(sw) * move_angle;
image_angle = angle;