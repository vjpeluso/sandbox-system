///@desc Create Grid
size = 16;
grid = mp_grid_create(0,0,ceil(room_width/size),ceil(room_height/size),size,size);

///Add walls to grid
mp_grid_add_instances(grid,obj_solid_base,1);

//create initial path
path=path_add();

mp_grid_path(grid,path,x,y,obj_player_world.x,obj_player_world.y,1);
path_start(path,2,path_action_stop,true);