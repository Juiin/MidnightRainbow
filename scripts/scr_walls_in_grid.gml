///scr_walls_in_grid(grid);

var grid = argument0;

var grid_height = ds_grid_height(grid);
var grid_width = ds_grid_width(grid);

var walls = 0;

for(var i=0;i<grid_width;i++)
{
    for(var j=0;j<grid_height;j++)
    {
        if(ds_map_find_value(grid[# i,j],"id") == WALL) walls++;        
    }
}

return walls;
