///scr_set_ov_cell(grid,x,y,type)

var grid = argument0;
var xx = argument1;
var yy = argument2;
var type = argument3;

switch(type)
{
    case START:
    ds_map_replace(grid[# xx,yy],"id",START);
    ds_map_replace(grid[# xx,yy],"sprite",spr_ov_start);
    ds_map_replace(grid[# xx,yy],"description","This is where you start.")
    ds_map_replace(grid[# xx,yy],"room",rm_overworld);
    ds_map_replace(grid[# xx,yy],"player",true);
    ds_map_replace(grid[# xx,yy],"moveable",true);
    ds_map_replace(grid[# xx,yy],"clear",true);
    break;
    case BOSS:
    ds_map_replace(grid[# xx,yy],"id",BOSS);
    ds_map_replace(grid[# xx,yy],"sprite",spr_ov_boss);
    ds_map_replace(grid[# xx,yy],"description","Inhabited by a powerful Boss")
    ds_map_replace(grid[# xx,yy],"room",rm_overworld);
    ds_map_replace(grid[# xx,yy],"moveable",true);
    break;
    case WALL:
    ds_map_replace(grid[# xx,yy],"id",WALL);
    ds_map_replace(grid[# xx,yy],"sprite",spr_ov_wall);
    ds_map_replace(grid[# xx,yy],"description","You can't pass through here!")
    ds_map_replace(grid[# xx,yy],"room",rm_overworld);
    ds_map_replace(grid[# xx,yy],"revealed",true);
    break;
    case ENCOUNTER:
    ds_map_replace(grid[# xx,yy],"id",ENCOUNTER);
    ds_map_replace(grid[# xx,yy],"sprite",spr_ov_encounter);
    ds_map_replace(grid[# xx,yy],"description","Inhabited by a group of monsters.")
    ds_map_replace(grid[# xx,yy],"room",rm_one);
    ds_map_replace(grid[# xx,yy],"moveable",true);
    break;
    case SCOUT:
    ds_map_replace(grid[# xx,yy],"id",SCOUT);
    ds_map_replace(grid[# xx,yy],"sprite",spr_ov_scout);
    ds_map_replace(grid[# xx,yy],"description","A Scouting Tower!");
    ds_map_replace(grid[# xx,yy],"moveable",true);
    ds_map_replace(grid[# xx,yy],"state","Scout");
    break;
    case WARP:
    ds_map_replace(grid[# xx,yy],"id",WARP);
    ds_map_replace(grid[# xx,yy],"sprite",spr_ov_warp);
    ds_map_replace(grid[# xx,yy],"description","This Warp Tower!");
    ds_map_replace(grid[# xx,yy],"moveable",true);
    ds_map_replace(grid[# xx,yy],"state","Warp");
    ds_map_replace(grid[# xx,yy],"neverclear",true);
    break;
}



