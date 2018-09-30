//reduce enemy hp
global.enemyhp -= 1;
//play sound
audio_play_sound((snd_bonus_1),1,false);
//destroy fruit instance
with (other) instance_destroy();