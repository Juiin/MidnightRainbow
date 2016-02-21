///scr_first_free_slot_y(grid_id)
var grid = argument0;

for(var i=0;i<ds_grid_width(grid);i++)
{
    for(var j=0;j<ds_grid_height(grid);j++)
    {
        if(grid[# i,j] == EMPTY) return j;
    }
}

