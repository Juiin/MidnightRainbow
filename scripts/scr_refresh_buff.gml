///scr_refresh_buff(buff_id,time)
var buff_id = argument0;
var refresh_time = argument1;

for(i=0;i<ds_list_size(buff_list);i++)
{
    if(ds_map_find_value(buff_list[| i],"id") == buff_id)
    {
        ds_map_replace(buff_list[| i],"time",refresh_time);
    }
}

