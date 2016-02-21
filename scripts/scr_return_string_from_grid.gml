///scr_return_string_from_grid(grid,x_pos,y_pos)
var grid = argument0;
var x_pos = argument1;
var y_pos = argument2;

if(grid[# x_pos,y_pos] != EMPTY)
{
    return ds_map_find_value(grid[# x_pos,y_pos],"type");
}
else return "";
