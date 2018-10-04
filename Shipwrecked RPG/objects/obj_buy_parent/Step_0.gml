/// @description 
//set as red or green button
if (global.cash >= global.inventory[myid,3])//if player has enough cash
{
	image_index = 0;
}
else { image_index = 1;}

if (global.inventory[myid,4] == global.inventory[myid,5]) //if maxed out
{
	image_index = 1;
	global.max_inv = true;
}