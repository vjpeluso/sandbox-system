/// @description 
///movement
if (instance_exists(obj_player_world))
{
	speed = 0;
	exit; //prevent move if player present
}

if (keyboard_check(ord("A")))
{
	direction += 5;
	                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    
}

if (keyboard_check(ord("D")))
{
	direction -= 5;
	
}	
direction = direction mod 360;
if (keyboard_check(ord("W")))
{
	speed += 0.5;
}
if (speed>max_speed) speed = max_speed; //dont exceed max speed
//friction
speed -=0.3;
if speed < 0 speed = 0; 

///sprite control
//Main sprite control
image_angle = direction;

///exit boat
if (instance_exists(obj_player_world)) exit; //prevent creation if player already present
if (keyboard_check_pressed(ord("Z")))
{
	instance_create_depth(x,y+32,0,obj_player_world);
	global.active = "Walking";
}





