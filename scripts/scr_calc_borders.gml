///scr_calc_border();
var str;
str[0] = "";
str[1] = "";
str[2] = "";
str[3] = "";
str[4] = "";

ds_grid_set_region(border_grid,0,0,4,4,0);

//Rows
for(var i=0;i<5;i++)
{
    for(var j=0;j<5;j++)
    {
        str[j] = scr_return_string_from_grid(item_grid,j,i);        
    }
    if(scr_compare(str[0],str[1],str[2],str[3],str[4]))
    {
        ds_grid_add_region(border_grid,0,i,4,i,1);
    }
}
//Columns
for(var i=0;i<5;i++)
{
    for(var j=0;j<5;j++)
    {
        str[j] = scr_return_string_from_grid(item_grid,i,j);        
    }
    if(scr_compare(str[0],str[1],str[2],str[3],str[4]))
    {
        ds_grid_add_region(border_grid,i,0,i,4,1);
    }
}
//Diagonals

//top-left to bottom-right
str[0] = scr_return_string_from_grid(item_grid,0,0);
str[1] = scr_return_string_from_grid(item_grid,1,1);
str[2] = scr_return_string_from_grid(item_grid,2,2);
str[3] = scr_return_string_from_grid(item_grid,3,3);
str[4] = scr_return_string_from_grid(item_grid,4,4);
if(scr_compare(str[0],str[1],str[2],str[3],str[4]))
{
    ds_grid_add(border_grid,0,0,1);
    ds_grid_add(border_grid,1,1,1);
    ds_grid_add(border_grid,2,2,1);
    ds_grid_add(border_grid,3,3,1);
    ds_grid_add(border_grid,4,4,1);
}

//top-right to bottom-left
str[0] = scr_return_string_from_grid(item_grid,4,0);
str[1] = scr_return_string_from_grid(item_grid,3,1);
str[2] = scr_return_string_from_grid(item_grid,2,2);
str[3] = scr_return_string_from_grid(item_grid,1,3);
str[4] = scr_return_string_from_grid(item_grid,0,4);
if(scr_compare(str[0],str[1],str[2],str[3],str[4]))
{
    ds_grid_add(border_grid,4,0,1);
    ds_grid_add(border_grid,3,1,1);
    ds_grid_add(border_grid,2,2,1);
    ds_grid_add(border_grid,1,3,1);
    ds_grid_add(border_grid,0,4,1);
}
