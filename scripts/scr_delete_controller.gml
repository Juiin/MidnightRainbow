for(var i=0;i<ds_list_size(c);i++)
{
    if(ds_map_find_value(c[| i],"destroy") == true && ds_list_size(c)>1)
    {
        ds_map_destroy(c[| i]);
        ds_list_delete(c,i);
        //scr_delete_controller();
        break;
    }
}
