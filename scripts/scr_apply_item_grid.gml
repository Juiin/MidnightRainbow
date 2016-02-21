///scr_apply_item_grid(minus or plus);

var de = argument0;

for(var i=0;i<5;i++)
{
    for(var j=0;j<5;j++)
    {
        if(item_grid[# i,j] != EMPTY)
        {
            var rarity = ds_map_find_value(item_grid[# i,j],"rarity");

            
            for(var k=0;k<rarity;k++)
            {
                 var stat_value = ds_map_find_value(item_grid[# i,j],"Stat_"+string(k)+"_value");
                 var stat_type = ds_map_find_value(item_grid[# i,j],"Stat_"+string(k)+"_type");
                 var border = border_grid[# i,j];
                 
                 stat_value=(stat_value*(1+(border*0.25)));
                 if(de == "plus")
                 {
                     scr_apply_item(stat_type,stat_value);  
                 }
                 else scr_deapply_item(stat_type,stat_value);
            }
        }
    }
}

