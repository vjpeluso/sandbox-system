/// @description 
#region Keyboard Control
//show/hide spells pop-up window
if (keyboard_check_pressed(ord("S")))
{
	can_show_spells=!can_show_spells;
	
}

if (keyboard_check_pressed(ord("I")))
{
	can_show_inventory = !can_show_inventory;
	
}
#endregion

#region Testing
//To allow changes for variables
if (keyboard_check(ord("Q")))
{
	global.hp++;
}
if (keyboard_check(ord("A")))
{
	global.hp--;
	if (global.hp<0) global.hp=0;
}
if (keyboard_check(ord("E")))
{
	global.xp++;
}
if (keyboard_check(ord("D")))
{
	global.xp--;
	if (global.xp<0) global.xp=0;
}
if (keyboard_check(ord("R")))
{
	global.gold++;
}
if (keyboard_check(ord("F")))
{
	global.gold--;
	if (global.gold<0) global.gold = 0;
}

if (keyboard_check_pressed(ord("W")))
{
	global.weapon++;
	if (global.weapon==3) global.weapon = 0;
	
}
#endregion