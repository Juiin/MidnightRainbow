if(state_new)
{
    scr_apply_knockback(target,point_direction(x,y,obj_player_parent.x,obj_player_parent.y),1);
}
if (state_timer > 1)
{
    state_switch("Idle");
}



