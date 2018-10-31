if (keyboard_check(vk_anykey))
{
	room_goto(room_start);
	instance_create_layer(300,270,layer,obj_player_world);
}