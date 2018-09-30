//reduce player hp 
global.p1hp -= 5;
//play sound
audio_play_sound(snd_ouch_4,1,false);
//destroy sword instance
with (other) instance_destroy()