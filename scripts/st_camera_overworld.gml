if(room == rm_overworld)
{
    var player_x = 0;
    var player_y = 0;

    for(var i=0;i<ds_grid_width(ov_grid);i++)
    {
        for(var j=0;j<ds_grid_height(ov_grid);j++)
        {
            if(ds_map_find_value(ov_grid[# i,j],"player"))
            {
                player_x = (i*64)+32;
                player_y = (j*64)+32;
            }       
        }        
    }   
    player_x = clamp(player_x,view_wview[view_current]/2,(ds_grid_width(ov_grid)*64)-(view_wview[view_current]/2));
    player_y = clamp(player_y,view_hview[view_current]/2,(ds_grid_height(ov_grid)*64)-(view_hview[view_current]/2));
    
    x += (player_x-x);
    y += (player_y-y);
    
     
}

