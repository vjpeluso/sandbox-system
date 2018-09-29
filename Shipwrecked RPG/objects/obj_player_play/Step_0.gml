/// @description detect key press for move
if (keyboard_check(ord("1")))
{
    global.player_play=play.water;
    instance_create(x,y,obj_computer_play);
    instance_destroy();
}
if (keyboard_check(ord("2")))
{
    global.player_play=play.fire;
    instance_create(x,y,obj_computer_play);
    instance_destroy();
}
if (keyboard_check(ord("3")))
{
    global.player_play=play.earth;
    instance_create(x,y,obj_computer_play);
    instance_destroy();
}
if (keyboard_check(ord("4")))
{
    global.player_play=play.ice;
    instance_create(x,y,obj_computer_play);
    instance_destroy();
}

