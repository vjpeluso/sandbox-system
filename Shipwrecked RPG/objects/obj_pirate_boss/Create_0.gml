///@description set up vars
slot = 4;
global.game_speed = 150;
alarm[0] = global.game_speed; //drop bombs
alarm[1] = room_speed * 5; //scatter bombs every 5 seconds
alarm[2] = room_speed * 8; // throw sword every 8 seconds
alarm[3] = room_speed * 10;//jump up every 10 seconds

 dir = choose("left","right");
 

