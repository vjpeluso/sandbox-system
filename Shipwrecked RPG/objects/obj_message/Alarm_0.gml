///@desc Set Text Typewriter Effect
typewriter_out += string_copy(text_to_write, i, 1);	//add new character to string
i+= 1;
if ((i-1) != string_length(text_to_write)) //if not end of text
{
	alarm[0] = 2; //restart alarm
}
else if alarm[1] < 0 alarm[1] = room_speed * 4;