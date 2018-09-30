//reduce player hp
global.p1hp -= 10;
//play sound
audio_play_sound(choose(snd_ouch,snd_ouch_2,snd_ouch_3),1,false);
//destroy bomb instance
with (other) instance_destroy();