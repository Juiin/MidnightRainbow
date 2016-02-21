///scr_check_allocateable(xpos,ypos)
var xx = argument0;
var yy = argument1;

if(scr_check_allocated(global.class,xx,yy) == false && 
(scr_check_allocated(global.class, max(0,xx-1),yy) == true || 
scr_check_allocated(global.class, min(8,xx+1),yy) == true ||
scr_check_allocated(global.class, xx,max(0,yy-1)) == true ||
scr_check_allocated(global.class, xx,min(8,yy+1)) == true ||
scr_check_temp_allocated(xx-1,yy) ||
scr_check_temp_allocated(xx+1,yy) ||
scr_check_temp_allocated(xx,yy-1) ||
scr_check_temp_allocated(xx,yy+1) )
&& ds_map_find_value(tree_array[xx,yy],"description") != "")
{
    return true;
}
else return false;
