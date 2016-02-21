///scr_check_temp_allocated(x_pos,y_pos)
//checks if xx,yy is currently temporarily allocated
var xx = argument0;
var yy = argument1;

if(!ds_list_empty(temp_allocated))
{
    for(var i=0;i<ds_list_size(temp_allocated);i++)
    {

        if(ds_map_find_value(temp_allocated[| i], "xx") == xx && ds_map_find_value(temp_allocated[| i], "yy") == yy)
        {
            return true;
        }
    
    }
}


return false;
