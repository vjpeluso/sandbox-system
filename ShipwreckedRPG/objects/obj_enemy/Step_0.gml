///reset path at end
if path_position>=0.5
{
    path_clear_points(path);
    mp_grid_path(grid,path,x,y,obj_player_world.x,obj_player_world.y,1);
    path_start(path,2,path_action_stop,true);
}
///face direction moving
if (direction>90 && direction<270)
{
    image_xscale=-1;
}
else
{
    image_xscale=1;
}