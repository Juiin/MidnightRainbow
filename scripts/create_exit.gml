corner_x = ds_list_create();
corner_y = ds_list_create();

//Create exit
for(i=0;i<grid_width;i++)
{
    for(j=0;j<grid_height;j++)
    {
        if(grid[# i,j] == FLOOR)
        {
            var wall_around = 0;
            if(grid[#i+1,j] == WALL) wall_around++;
            if(grid[#i-1,j] == WALL) wall_around++;
            if(grid[#i,j+1] == WALL) wall_around++;
            if(grid[#i,j-1] == WALL) wall_around++;
            
            if(wall_around==3) //this is a corner
            {
                ds_list_add(corner_x,i)
                ds_list_add(corner_y,j)                
            }
        }
    }
}

max_length = 0
exit_x = 0
exit_y = 0
if(!ds_list_empty(corner_x))
{
    for(i=0;i<ds_list_size(corner_x)-1;i++)
    {
        var distance = point_distance(obj_player.x,obj_player.y,ds_list_find_value(corner_x,i)*32,ds_list_find_value(corner_y,i)*32)
        if(distance > max_length)
        {
            max_length = distance;
            exit_x = corner_x[| i];
            exit_y = corner_y[| i];   
        }
    }
}


grid[# exit_x,exit_y] = EXIT;
