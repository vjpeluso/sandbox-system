/// @description 
global.p1hp -=10;
audio_play_sound(choose(snd_ouch,snd_ouch_2),1,false);
with (other)
{
	instance_destroy();
}
	