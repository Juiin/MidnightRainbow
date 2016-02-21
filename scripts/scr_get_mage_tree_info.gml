///scr_get_mage_tree_info(xpos,ypos,kind)
var xx = argument0;
var yy = argument1;
var kind = argument2;

var value = ds_map_find_value(tree_array[xx,yy],kind);

return value;

//return ds_map_find_value(tree_array[xx,yy],kind);
