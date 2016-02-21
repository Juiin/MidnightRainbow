if(state_new)
{
    image_blend=c_orange
}


if(state_timer>room_speed*1.5) //after 1 second
{
    
    state_switch("Attack");
}

