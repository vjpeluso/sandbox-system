///Selecting message/playing audio
if (! is_touching)
{
	var message = irandom(8); //select a random message in the array
	show_debug_message(message);
	is_touching = true;
	alarm[0] = room_speed * 5;
	text = mushroom_text[message];
	switch (message)
	{
		case 0:
		audio_play_sound(snd_mush_0,1,false);
		break;
		
		case 1:
		audio_play_sound(snd_mush_1,1,false);
		break;
		
		case 2:
		audio_play_sound(snd_mush_2,1,false);
		break;
		
		case 3:
		audio_play_sound(snd_mush_3,1,false);
		break;
		
		case 4:
		audio_play_sound(snd_mush_4,1,false);
		break;
		
		case 5:
		audio_play_sound(snd_mush_5,1,false);
		break;
		
		case 6:
		audio_play_sound(snd_mush_6,1,false);
		break;
		
		case 7:
		audio_play_sound(snd_mush_7,1,false);
		break;
		
		case 8:
		audio_play_sound(snd_mush_8,1,false);
	}
}
