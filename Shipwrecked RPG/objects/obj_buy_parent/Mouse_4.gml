/// @description 
if (global.max_inv)
{
	audio_play_sound(snd_overkill,1,false); //play  sound
	obj_shopkeeper.is_talking = true; //make shopkeeper talk
}
else if (global.cash <global.inventory[myid,3])
{
	audio_play_sound(snd_not_enough_cash,1,false);
	obj_shopkeeper.is_talking = true; //make shopkeeper talk
}

else
{
	audio_play_sound(snd_purchase_complete,1,false);
	obj_shopkeeper.is_talking = true; //make shopkeeper talk
	global.cash = global.inventory[myid,3];
	global.inventory[myid,4]++;
}
