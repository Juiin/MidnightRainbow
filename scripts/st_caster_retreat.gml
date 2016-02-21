var dir = point_direction(target.x,target.y,x,y);

movement_and_collision(dir,total_move_speed,obj_wall,true);

if(distance_to_object(target) >= retreat_radius)
{
    state_switch("Idle");
}

