if (sprite_index == spr_pirate_jump)
{
	global.enemyhp -= 5;
	audio_play_sound(choose(snd_pirate_ouch_1,snd_pirate_ouch_2),1,false);
}

with (other) instance_destroy();


