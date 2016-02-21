///scr_delete_buff(buff_id)
var buff_id = argument0;

for(i=0;i<ds_list_size(buff_list);i++)
{
    if(ds_map_find_value(buff_list[| i],"id") == buff_id)
    {
        scr_remove_buff(buff_id);
        ds_map_destroy(buff_list[| i ]);
        ds_list_delete(buff_list,i);
    }
}

