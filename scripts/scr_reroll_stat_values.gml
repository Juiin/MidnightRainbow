///scr_reroll_stat_values(map);

var map = argument0;

var rarity = map[? "rarity"];

for(var i=0;i<rarity;i++)
{
    var stat_tier = map[? "Stat_"+string(i)+"_tier"];
    var stat_type = map[? "Stat_"+string(i)+"_type"];
    var stat_id = scr_get_stat_id(stat_type);
    
    ds_map_replace(map,"Stat_"+string(i)+"_value",irandom_range(low_roll[stat_tier,stat_id],high_roll[stat_tier,stat_id]));
}

