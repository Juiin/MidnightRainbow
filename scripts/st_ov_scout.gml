if(view_wview[view_current] < wview*1.25) view_wview[view_current]+=(wview*1.25)/(room_speed*2);
if(view_hview[view_current] < hview*1.25) view_hview[view_current]+=(hview*1.25)/(room_speed*2);


if(mouse_check_button_pressed(mb_left))
{
    scr_ov_reveal_circle(ov_grid,mouse_x,mouse_y,scout_radius);
    state_switch("Normal");
}

