/// @description Open and Read File
lines = 0;
sentence[0] = "";
show_message("Searching for file");
var file = file_text_open_read(working_directory+"level1.txt"); //open file for reading
if (!file_exists(file))
{
	//display a message and create a new file.
	show_message("File not found.\nProceeding to Start Room");
	room_goto(room_start);
	
}
else 
{
	while (!file_text_eof(file)) //loops until end of file
	{
		sentence[lines] = file_text_read_string(file);
		file_text_readln(file);
		lines++;
	}
}

//close the file
file_text_close(file);

///read characters andn create objects
//size of grid
grid_size = 32;

//create a loop for however many lines
for(var loop = 0; loop < lines; loop += 1)
{
	var line = (sentence[loop]);
	show_message(line);
	line_width = string_length(line);
	
	for(var p = 1; p <= line_width; p++)
	{
		//check each position, create appropriate block
		switch (string_char_at(line,p))
		{
			case "P":
			instance_create_layer(16+(p-1)*grid_size,16+loop*grid_size,layer,obj_player_world);
			break;
			case "W":
			instance_create_layer(16+(p-1)*grid_size,16+loop*grid_size,layer,obj_player_world);
			break;
			case "L":
			instance_create_layer(16+(p-1)*grid_size,16+loop*grid_size,layer,obj_player_world);
			break;
			case "B":
			instance_create_layer(16+(p-1)*grid_size,16+loop*grid_size,layer,obj_player_world);
			break;
			case "T":
			instance_create_layer(16+(p-1)*grid_size,16+loop*grid_size,layer,obj_player_world);
			break;
		}
			
	}	
}

