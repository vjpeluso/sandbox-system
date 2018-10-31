/// @description 
global.gold += 10;
global.enemyhp -=5;
audio_play_sound(snd_bonus,1,false);

with (other)
{
	instance_destroy();
}