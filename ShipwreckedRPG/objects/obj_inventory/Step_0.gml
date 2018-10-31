/// @desc Toggle Inventory On/Off
//visible switch - switches between true and false, used to show/hide inventory
if (keyboard_check_pressed(ord("V")))
{
	global.showInv=!global.showInv;
	
}