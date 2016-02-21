if(state_timer>room_speed) //after 1 second
{
    state_switch("Roam");
}

if(distance_to_object(target) <= detect_radius && !scr_collision_line_ext(x,y,target.x,target.y,obj_wall,true,true,8))
{
    state_switch("Attack Startup");
}
