if(state_new)
{
    image_blend=c_green
}


if(state_timer>room_speed*2.5) //after 1 second
{
    
    state_switch("Idle");
}

