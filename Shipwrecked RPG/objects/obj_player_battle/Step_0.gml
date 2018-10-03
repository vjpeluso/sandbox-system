#region Movement
///move to position slot
if (keyboard_check_pressed(vk_left) && (slot > 1))
{
	slot--;
	dir = left;
	move_towards_point(64*slot,y,4);
}
if (keyboard_check_pressed(vk_right) && (slot<11))	
{
	slot++;
	dir = right;
	move_towards_point(64*slot,y,4);
}

//keep in range
if (slot < 1) slot = 1;
if (slot > 11) slot = 11;

//stop
if (x == 64*slot)
{
	dir = 0;
	speed = 0;
}
#endregion

#region Attacks
if (keyboard_check_pressed(vk_up) && (can_shoot))
{
	alarm[0] = room_speed;
	var sword = instance_create_layer(x,y,layer,obj_player_sword);
	sword.direction = sword_dir;
	sword.speed = sword_spd;
}
#endregion

#region Animation
if (dir == left) sprite_index = spr_player_left;
if (dir == right) sprite_index = spr_player_right;
#endregion 

