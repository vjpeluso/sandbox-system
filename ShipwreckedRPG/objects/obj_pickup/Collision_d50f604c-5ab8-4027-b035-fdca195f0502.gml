/// @desc Check for open slot
//detect keypress and check for empty slot
if(keyboard_check_pressed(ord("P")) && (scr_itempickup(my_id))) ////if slot is available, add item to slot
{
	
	instance_destroy(); //then destroy instance
}
