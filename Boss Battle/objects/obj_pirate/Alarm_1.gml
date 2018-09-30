/// @desc create scatter bombs
//send bomb scatter
alarm[1] = room_speed * 5;
var loop;
for (loop = 210; loop < 350; loop += 15)
{
	audio_play_sound(choose(snd_ar_3,snd_ar_4),1,false);
	var bomb = instance_create_layer(x,y,layer,obj_scatter_bomb);
	bomb.direction = loop;
	bomb.speed = 3;
}
