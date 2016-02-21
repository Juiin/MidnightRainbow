
//needs revision
new_x = x;
new_y = y;

if(!place_meeting(new_x+lengthdir_x(6,point_direction(x,y,mouse_x,mouse_y)),new_y,obj_wall) && !place_meeting(new_x,new_y+lengthdir_y(6,point_direction(x,y,mouse_x,mouse_y)),obj_wall))
{
    var repeats = 0;
    do
    {
        new_x+=lengthdir_x(6,point_direction(x,y,mouse_x,mouse_y));
        new_y+=lengthdir_y(6,point_direction(x,y,mouse_x,mouse_y));
        repeats++;
        if(repeats mod 10 == 0) instance_create(new_x,new_y,obj_burning_ground);
    }
    until(new_x == x+lengthdir_x(blink_range,point_direction(x,y,mouse_x,mouse_y)) || 
    new_y == y+lengthdir_y(blink_range,point_direction(x,y,mouse_y,mouse_y)) || 
    place_meeting(new_x+lengthdir_x(6,point_direction(x,y,mouse_x,mouse_y)),new_y,obj_wall) || 
    place_meeting(new_x,new_y+lengthdir_y(6,point_direction(x,y,mouse_x,mouse_y)),obj_wall)
    || repeats >=50)
}
/*
while(new_x != x+lengthdir_x(blink_range,point_direction(x,y,mouse_x,mouse_y)) || !place_meeting(new_x+lengthdir_x(3,point_direction(x,y,mouse_x,mouse_y)),new_y,obj_wall) || !place_meeting(new_x,new_y+lengthdir_y(3,point_direction(x,y,mouse_x,mouse_y)),obj_wall))
{
    new_x+=lengthdir_x(3,point_direction(x,y,mouse_x,mouse_y));
    new_y+=lengthdir_y(3,point_direction(x,y,mouse_x,mouse_y));
}
*/


x = new_x;
y = new_y;
