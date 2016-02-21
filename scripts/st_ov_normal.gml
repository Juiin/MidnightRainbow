//Camera
if(view_wview[view_current] > wview) view_wview[view_current]-=(wview*1.25)/(room_speed*2);
if(view_hview[view_current] > hview) view_hview[view_current]-=(hview*1.25)/(room_speed*2);




//Moving
if(mouse_check_button_pressed(mb_left))
{
    if(mouse_x > (player_x-1)*64 && mouse_x < (player_x+2)*64 && mouse_y > (player_y-1)*64 && mouse_y < (player_y+2)*64)
    {
        var xx = mouse_x div 64;
        var yy = mouse_y div 64;
    
        if(ds_map_find_value(ov_grid[# xx,yy],"moveable"))
        {
            ds_map_replace(ov_grid[# player_x,player_y],"player",false);
            ds_map_replace(ov_grid[# xx,yy],"player",true);
            
            if(!ds_map_find_value(ov_grid[# xx,yy],"clear"))
            {
                if(ds_map_find_value(ov_grid[# xx,yy],"state") != "")
                {
                    if(!ds_map_find_value(ov_grid[# xx,yy],"neverclear")) ds_map_replace(ov_grid[# xx,yy],"clear",true);
                    state_switch(ds_map_find_value(ov_grid[# xx,yy],"state"));
                }
                else 
                {
                    ds_map_replace(ov_grid[# xx,yy],"clear",true);
                    instance_activate_object(obj_player_parent);
                    room_goto(ds_map_find_value(ov_grid[# xx,yy],"room"));
                }
            }
        }
    }   
}
