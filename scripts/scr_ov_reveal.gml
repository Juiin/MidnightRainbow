///scr_ov_reveal(x,y,radius);
var xx = argument0;
var yy = argument1;
var radius = argument2;

for(var i=xx-radius;i<=xx+radius;i++)
{
    for(var j=yy-radius;j<=yy+radius;j++)
    {
        ds_map_replace(ov_grid[# i,j],"revealed",true);
    }   
}

