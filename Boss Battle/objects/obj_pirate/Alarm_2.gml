/// @description Send sword toward player
alarm[2] = room_speed * 8;
var sword = instance_create_layer(x,y,layer, obj_enemy_sword);
sword.direction = point_direction(x,y,obj_player.x,obj_player.y);
sword.speed = 5;