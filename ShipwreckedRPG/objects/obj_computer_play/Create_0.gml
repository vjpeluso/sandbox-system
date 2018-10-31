/// @description For Computer Hand
global.text="Computer Playing";
play=irandom_range(1,4);//choose a random number

switch (play)
    {
    case 1:
    global.computer_play=play.water;
    break;
    case 2:
    global.computer_play=play.fire;
    break;
    case 3:
    global.computer_play=play.earth;
    break;
    case 4:
    global.computer_play=play.ice;
    break;
    }
alarm[0]=room_speed*1;

