var ft = 0;
for(i=0;i<grid_height;i++)
{
    for(j=0;j<grid_width;j++)
    {
        if(grid[# i,j] == FLOOR)
        {
            ft++;
        }    
    }
}
return ft;
