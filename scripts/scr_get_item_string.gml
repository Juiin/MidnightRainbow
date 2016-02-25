///scr_get_item_string(grid,grid_x,grid_y,get_border_info);
var grid = argument0;
var grid_x = argument1;
var grid_y = argument2;
var border_info = argument3;
var gear_score = 0;

var str = "";

var rarity = ds_map_find_value(grid[# grid_x,grid_y],"rarity");

for(var i = 0;i<rarity;i++)
{
        var stat_value = ds_map_find_value(grid[# grid_x,grid_y],"Stat_"+string(i)+"_value");
        if(border_info) stat_value=(stat_value*(1+((border_grid[# grid_x,grid_y])*0.25)));
        var stat_type = ds_map_find_value(grid[# grid_x,grid_y],"Stat_"+string(i)+"_type");
        var stat_tier = ds_map_find_value(grid[# grid_x,grid_y],"Stat_"+string(i)+"_tier");
        
        str = string_insert(scr_get_stat_string(stat_type,stat_value,stat_tier,rarity,true),str,string_length(str)+1);
        
        gear_score += scr_gear_score_stat(stat_type,stat_value);
}

if(keyboard_check(vk_alt)) str = string_insert("Gear Score: "+string(round(gear_score)),str,string_length(str)+1);

return str;
