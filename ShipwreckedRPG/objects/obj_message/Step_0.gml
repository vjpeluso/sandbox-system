/// @description 
if (!ds_list_empty(global.message) && can_show)
{
	to_draw = ds_list_find_value(global.message,0);	//get message from top of ds_list
	ds_list_delete(global.message,0);	//destroy the message
	alarm[0] = room_speed*4; //create a pause
	
}
if (string_length(show_text) < string_length(to_draw))
{
	show_text = string_copy(to_draw,1,count);
	alarm[0] = room_speed*5;
	count ++;
}