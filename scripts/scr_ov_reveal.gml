///scr_ov_reveal(x,y,radius);
var xx = argument0;
var yy = argument1;
var radius = argument2;

for(var i=xx-radius;i<=xx+radius;i++)
{
    for(var j=yy-radius;j<=yy+radius;j++)
    {
        var ii = clamp(i,0,ds_grid_width(ov_grid)-1);
        var jj = clamp(j,0,ds_grid_height(ov_grid)-1);
        ds_map_replace(ov_grid[# ii,jj],"revealed",true);
    }   
}

