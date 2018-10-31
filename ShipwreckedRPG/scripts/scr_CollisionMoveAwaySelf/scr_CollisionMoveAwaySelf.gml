///scr_CollisionMoveAwaySelf (factor)
//CollisionMoveAway (1) is standard for AI
//call in collision event 
//Objects should have am_Mass variable, >0 could be lbs. or kgs.
//pushes each other out of the way while moving each other out of contact 
//Origins must be centered
//argument0 is the max rewind step(4 for fast, .5 for slow and accurate)

var a,xoff,yoff,maxcheck;
a = point_direction(x,y,other.x,other.y);
xoff = lengthdir_x(argument0,a);
yoff = lengthdir_y(argument0,a);
var om,mm;
om = other.m_Mass/m_Mass;
mm = m_Mass/other.m_Mass;
var mag; mag = sqrt((om*om)+(mm*mm))
om/=mag;
mm/=mag;
maxcheck = ((speed+other.speed)/argument0)*2 + 100;
while(place_meeting(x,y,other.id) and maxcheck >= 0)
{
	x-=xoff * om;
	y-=yoff * om;
	maxcheck -=1;
}
