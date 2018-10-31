/// @description set up
enum player_state  {
    idle,
    up,
    down,
    left,
    right
    }

dir=player_state.down;	//initial sprite direction for player object
is_moving=false;
image_speed=0.5;
can_show_message = true; //allows a message to be shown

col=0; //initial value
sw=0; //for sin wave
move_col=5;
invincible=false;
invincible_tmr=100;
alarm[1]=20; // to replenish






