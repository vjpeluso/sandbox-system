/// @desc Set Up and Mouse Item
//set up
global.maxItems=3;   //total item slots

for (var i = 0; i < 3; i += 1)
{
	global.inventory[i] = -1;
	button[i] = instance_create_layer(0,0,layer,obj_invbutton2);
	button[i].slot = i;
}

global.mouseItem=-1;
instance_create_layer(x,y,layer,obj_mouseitem);
