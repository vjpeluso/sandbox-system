//reduce player health
global.p1hp -= 1;
//play sound
audio_play_sound(choose(snd_laugh_1,snd_laugh_2), 1, false);
//destroy bomb instance
with (other) instance_destroy();