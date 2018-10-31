/// @desc Draw Background and wall sprite
draw_set_alpha(0.2);
draw_circle(75,600,75,0);
draw_set_alpha(1);
draw_set_color(c_green);
draw_circle(75,600,75,1);
draw_circle(75,600,10,1);

//set up variables
var d,a,radarX,radarY;
radarX = obj_player_world.x;
radarY = obj_player_world.y;

//draw the wall instances that are in range
with(obj_wall)
{
	//distance
	d = point_distance(radarX,radarY,x,y);
	if(d<=600) //this is the distance to check for
	{
		d = d/600*75;
		a = point_direction(radarX,radarY,x,y);
		draw_sprite(spr_map_wall,0,75+lengthdir_x(d,a),600+lengthdir_y(d,a));
	}
}

//draw the chest on the minimap
with(obj_chest)
{
	//how far
	d = point_distance(radarX,radarY,x,y);
	//in range
	if(d>600) //for long-range chest instances
	{
		//convert range to draw
		d = 75;
		//angle to target
		a = point_direction(radarX,radarY,x,y);
		//draw relative to center of radar using simplified lengthdir function
		draw_sprite(spr_map_chest,0,75+lengthdir_x(d,a),600+lengthdir_y(d,a));
	}
	else if d<=600 //this is the standard distance to check for
	{
		d = d/600*75;
		a = point_direction(radarX,radarY,x,y);
		draw_sprite(spr_map_chest,0,75+lengthdir_x(d,a),600+lengthdir_y(d,a));
	}
}