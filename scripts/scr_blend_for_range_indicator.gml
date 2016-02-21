//needs revision for individual cases
if(!instance_exists(obj_generator))
{
    flameblast_blend = c_red;
    tower_blend = c_red;
}
else if(point_distance(x,y,mouse_x,mouse_y) > flameblast_place_range
|| collision_line(x,y,mouse_x,mouse_y,obj_wall,true,true)
|| obj_generator.grid[# mouse_x div CELL_WIDTH, mouse_y div CELL_HEIGHT] != FLOOR)
{
    flameblast_blend = c_red;
    tower_blend = c_red;
}
else
{
    flameblast_blend = c_white;
    tower_blend = c_white;
}


