/// @description 
alarm[2] = irandom(room_speed*2);
if (instance_exists(obj_lightning))
{
	with (obj_lightning) instance_destroy();
}
instance_create_depth(x,y,0,obj_lightning)