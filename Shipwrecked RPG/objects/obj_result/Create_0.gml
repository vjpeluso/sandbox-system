/// @description check result
result=scr_play(global.player_play, global.computer_play);

switch (result)
{
        case -1:
        global.computer_wins++;
        global.text="Computer Wins";
        break;
        case 0:
        global.draws++;
        global.text="Draw";
        break;
        case 1:
        global.player_wins++;
        global.text="Player Wins";
        break;
}
alarm[0]=room_speed*4;


///check score
if global.player_wins==5 room_goto(room_player_win);
if global.computer_wins==5 room_goto(room_computer_win);

