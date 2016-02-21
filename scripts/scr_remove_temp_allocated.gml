///scr_remove_temp_allocated(xpos,ypos)
var xx = argument0;
var yy = argument1;

for(var i = 0;i<ds_list_size(temp_allocated);i++)
{
    if(ds_map_find_value(temp_allocated[| i], "xx") == xx && ds_map_find_value(temp_allocated[| i], "yy") == yy)
    {
        ds_map_destroy(temp_allocated[| i]);
        ds_list_delete(temp_allocated,i);
        break;
    }
}

