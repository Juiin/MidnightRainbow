///scr_ov_reveal_circle(grid,x,y,r);
var grid = argument0;
var xx = argument1;
var yy = argument2;
var radius = argument3;

for(var i=0;i<ds_grid_width(grid);i++)
{
    for(var j=0;j<ds_grid_height(grid);j++)
    {
        if(point_in_circle(i*64+32,j*64+32,xx,yy,radius))
        {
            ds_map_replace(grid[# i,j],"revealed",true);
        } 
    }
}

