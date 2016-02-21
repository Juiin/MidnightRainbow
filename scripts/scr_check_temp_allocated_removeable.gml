///scr_check_temp_allocated_removeable(xx,yy)

var xx = argument0;
var yy = argument1;

var path = path_add();
var mp_grid = mp_grid_create(0,0,9,9,1,1);

//Set entire Grid Forbidden
mp_grid_add_rectangle(mp_grid,0,0,8,8);

//Clear Allocated and Temp Allocated Cells
for(var i=0;i<9;i++)
{
    for(var j=0;j<9;j++)
    { 
        if(scr_check_temp_allocated(i,j) || scr_check_allocated(global.class,i,j))
        {
            mp_grid_clear_cell(mp_grid,i,j);
        }
    }
}

//Mark cell to be removed as forbidden
mp_grid_add_cell(mp_grid,xx,yy);

//Check Path to All Temp Allocated Cells execpt the cell to be removed
for(var i=0;i<9;i++)
{
    for(var j=0;j<9;j++)
    {
        if(scr_check_temp_allocated(i,j))
        {
            if!(i == xx && j == yy)
            {
                //Return False if any path can't reach
                if(!mp_grid_path(mp_grid,path,4,4,i,j,false)) return false;
            }
        }
    }
}

mp_grid_destroy(mp_grid);
path_delete(path);

//Return True if code gets to here
return true;
