/// @description 
menu_x = x;
menu_y = y;
button_h = 32;

button[0] = "Start Room";
button[1] = "Pathfinding AI Room";
button[2] = "HUD Room";
button[3] = "Inventory Room";
button[4] = "Mini-Quest - Treasure Hunt"
button[5] = "Back";
buttons = array_length_1d(button);

menu_index = 0; //sets the default starting position to "New Game"
last_selected = 0; //flag to keep track of previously selected menu option
