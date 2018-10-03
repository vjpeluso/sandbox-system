///@desc drop bomb / fruit - increase speed
global.game_speed--;
if (global.game_speed < 2) 
{
	global.game_speed = 2;
	alarm[0] = global.game_speed;
	drop = choose("bomb","fruit","fruit");
	if (drop == "bomb")
	{
		var bomb = instance_create_layer(slot*64,120,layer,obj_bomb);
		bomb.direction = 270;
		bomb.speed = 2;
		audio_play_sound(choose(snd_ar_1,snd_ar_2),1,false);
	}
	if (drop == "fruit")
	{
		var fruit = instance_create_layer(slot*64,120,layer,obj_fruit);
		fruit.direction = 270;
		fruit.speed = 2;
		audio_play_sound(snd_bonus_coming,1,false);
	}
}
///reset alarm
alarm[0] = global.game_speed;

///move
//weigh instance to move away from screen edge
if (slot == 11) dir = "left";
if (slot == 1) dir = "right";

//choose next direction - weighted to move in same direction
dir = choose("left","right",dir,dir);
if (dir == "left")
{
	image_xscale = -1;
	slot--;
}
if (dir == "right")
{
	image_xscale = 1;
	slot++;
}
//keep in range
if (slot < 1) slot = 1;
if (slot > 11) slot = 11;
