/// @description 
global.p1hp -= 20;
audio_play_sound(snd_ouch_4,1,false);
with (other)
{
	instance_destroy();
}
