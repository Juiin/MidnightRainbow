//roaming
if(state_new)
{
    dir = irandom_range(0,360);
}
if(state_timer<(room_speed*(random_range(0.5,1))))
{
   movement_and_collision(dir,total_move_speed,obj_wall,true) 
}
else state_switch("Idle");


if(distance_to_object(target) <= detect_radius && !scr_collision_line_ext(x,y,target.x,target.y,obj_wall,true,true,8))
{
    image_blend=c_red
    state_switch("Attack Startup");
}
if(distance_to_object(target) <= retreat_radius)
{
    state_switch("Retreat");
}
