/// @description 
global.p1hp -=5;
audio_play_sound(choose(snd_ouch_3,snd_ouch_4),1,false);
with (other)
{
	instance_destroy();
}