/// @description keypress code

#region Movement
if (keyboard_check(ord("A")))
{
	dir=player_state.left;
	is_moving=true;
}
else
if (keyboard_check(ord("D")))
{
	dir=player_state.right;
	is_moving=true;
}
else
if (keyboard_check(ord("W")))
{
	dir=player_state.up;
	is_moving=true;
}
else
if (keyboard_check(ord("S")))
{
	dir=player_state.down;
	is_moving=true;
}
else
{
	is_moving=false;
}

if is_moving
{
    switch (dir)
    {
        case player_state.up:
		if !position_meeting(x,y-4,obj_wall) && !position_meeting(x,y-4,obj_solid_base)
		y-=4;
        break;

        case player_state.down:
		if !position_meeting(x,y+4,obj_wall) && !position_meeting(x,y+4,obj_solid_base)
        y += 4;
        break;

        case player_state.left:
		if !position_meeting(x-4,y,obj_wall) && !position_meeting(x-4,y,obj_solid_base)
        x -= 4;
        break;
   
        case player_state.right:
		if !position_meeting(x+4,y,obj_wall) && !position_meeting(x+4,y,obj_solid_base)
        x += 4;
        break;
    }
}
depth = -y;
#endregion
#region Animation
if is_moving
{
    switch (dir)
    {
        case player_state.up:
        sprite_index=spr_walk_up;
        break;

        case player_state.down:
        sprite_index=spr_walk_down;
        break;

        case player_state.left:
        sprite_index=spr_walk_left;
        break;
   
        case player_state.right:
        sprite_index=spr_walk_right;
        break;
    }
}
else
{
    switch (dir)
    {
        case player_state.up:
        sprite_index=spr_idle_up;
        break;

        case player_state.down:
        sprite_index=spr_idle_down;
        break;

        case player_state.left:
        sprite_index=spr_idle_left;
        break;
   
        case player_state.right:
        sprite_index=spr_idle_right;
        break;
    }
}
#endregion
#region Abilities
if keyboard_check_released(ord("I")) //switch between true/false on keypress
{
	invincible=!invincible;
}
if invincible
{
	sw+=0.1; //for sine wave- ie speed
	col = sin(sw) *move_col; //for sine wave
	image_blend = make_color_rgb(125+(col*20),100,100);
	invincible_tmr-=1;
}
else{image_blend = make_color_rgb(255,255,255);}

//check if player has invincible timer
if invincible_tmr<1 invincible = false;
#endregion
#region SFX
///select walking fx
var soundfx=snd_normal;
if position_meeting(x,y,obj_water) soundfx=snd_water;
else if position_meeting(x,y,obj_leaves) soundfx=snd_leaves;
else if position_meeting(x,y,obj_wood) soundfx=snd_wood;
else if position_meeting(x,y,obj_solid) soundfx=snd_solid;
//play the sound
if is_moving && !audio_is_playing(soundfx) audio_play_sound(soundfx,1,false);

//update audio position
audio_listener_position(x,y,0);
audio_listener_orientation(0,-1,0,0,-1,0);

#endregion