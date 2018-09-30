/// @description keypress code
if (keyboard_check(ord("A")))
{
    dir=player_state .left;
    is_moving=true;
}
else
if (keyboard_check(ord("D")))
{
    dir=player_state .right;
    is_moving=true;
}
elses
if (keyboard_check(ord("W")))
{
    dir=player_state .up;
    is_moving=true;
}
else
if (keyboard_check(ord("S")))
{
    dir=player_state .down;
    is_moving=true;
}
else
{
    is_moving=false;
}


///movement
if is_moving
{
    switch (dir)
    {
        case player_state .up:
        y -= 4;
        break;

        case player_state .down:
        y += 4;
        break;

        case player_state .left:
        x -= 4;
        break;
   
        case player_state .right:
        x += 4;
        break;
    }
}

///animation
if is_moving
{
    switch (dir)
    {
        case player_state .up:
        sprite_index=spr_walk_up;
        break;

        case player_state .down:
        sprite_index=spr_walk_down;
        break;

        case player_state .left:
        sprite_index=spr_walk_left;
        break;
   
        case player_state .right:
        sprite_index=spr_walk_right;
        break;
    }
}
else
{
    switch (dir)
    {
        case player_state .up:
        sprite_index=spr_idle_up;
        break;

        case player_state .down:
        sprite_index=spr_idle_down;
        break;

        case player_state .left:
        sprite_index=spr_idle_left;
        break;
   
        case player_state .right:
        sprite_index=spr_idle_right;
        break;
    }
}


