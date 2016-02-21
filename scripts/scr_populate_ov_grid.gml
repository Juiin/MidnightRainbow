///scr_populate_ov_grid(grid_id,wall_amount);
var grid = argument0;
var wall_amount = argument1;

var grid_height = ds_grid_height(grid);
var grid_width = ds_grid_width(grid);

ds_grid_set_region(grid,0,0,grid_height-1,grid_width-1,EMPTY);

//Maps in Grid Cells
for(var i=0;i<grid_width;i++)
{
    for(var j=0;j<grid_height;j++)
    {
        grid[# i,j] = ds_map_create();
        ds_map_add(grid[# i,j],"id",EMPTY);
        ds_map_add(grid[# i,j],"sprite",spr_ov_empty);
        ds_map_add(grid[# i,j],"description","This Space is Empty!");
        ds_map_add(grid[# i,j],"revealed",false);
        ds_map_add(grid[# i,j],"room",rm_overworld);
        ds_map_add(grid[# i,j],"player",false);
        ds_map_add(grid[# i,j],"moveable",false);
        ds_map_add(grid[# i,j],"clear",false);
        ds_map_add(grid[# i,j],"state","");
        ds_map_add(grid[# i,j],"neverclear",false);
    }
}

//Fixed Points
var start_x = (grid_width-1)/2;
var start_y = (grid_height-1)/2;

var n_boss_x = (grid_width-1)/2;
var n_boss_y = 0;

var s_boss_x = (grid_width-1)/2;
var s_boss_y = grid_height-1;

var w_boss_x = 0;
var w_boss_y = (grid_height-1)/2;

var e_boss_x = grid_width-1;
var e_boss_y = (grid_height-1)/2;


//4 Bosses
scr_set_ov_cell(grid,start_x,start_y,START);
scr_set_ov_cell(grid,n_boss_x,n_boss_y,BOSS);
scr_set_ov_cell(grid,s_boss_x,s_boss_y,BOSS);
scr_set_ov_cell(grid,w_boss_x,w_boss_y,BOSS);
scr_set_ov_cell(grid,e_boss_x,e_boss_y,BOSS);


//Fill with walls
path = path_add();
mp_grid = mp_grid_create(0,0,grid_width,grid_height,1,1);


do
{
    do
    {
        var xx = irandom(grid_width-1);
        var yy = irandom(grid_height-1);
    }
    until(ds_map_find_value(grid[# xx,yy],"id") == EMPTY)

    
    mp_grid_add_cell(mp_grid,xx,yy);
    
    if(mp_grid_path(mp_grid,path,start_x,start_y,n_boss_x,n_boss_y,true) &&
    mp_grid_path(mp_grid,path,start_x,start_y,s_boss_x,s_boss_y,true) &&
    mp_grid_path(mp_grid,path,start_x,start_y,w_boss_x,w_boss_y,true) &&
    mp_grid_path(mp_grid,path,start_x,start_y,e_boss_x,e_boss_y,true))
    {
        scr_set_ov_cell(grid,xx,yy,WALL);
    }
    else
    {
        mp_grid_clear_cell(mp_grid,xx,yy);
    }
}
until(scr_walls_in_grid(grid) >= wall_amount)


//Encounters

for(var i=0;i<grid_width;i++)
{
    for(var j=0;j<grid_height;j++)
    {
        if(ds_map_find_value(grid[# i,j],"id") == EMPTY) scr_set_ov_cell(grid,i,j,choose(ENCOUNTER,SCOUT,WARP));
    }
}


//Cleanup
path_delete(path)
mp_grid_destroy(mp_grid);
