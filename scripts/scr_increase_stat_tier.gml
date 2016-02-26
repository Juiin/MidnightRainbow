///scr_increase_stat_tier(map,stat_number);

var map = argument0;
var stat_number = argument1;

var old_stat_tier = map[? "Stat_"+string(stat_number)+"_tier"];
//Safety Clamp
var old_stat_tier = clamp(old_stat_tier,0,3);
var new_stat_tier = old_stat_tier+1;

var stat_type = map[? "Stat_"+string(stat_number)+"_type"];
var stat_id = scr_get_stat_id(stat_type);

var stat_value = irandom_range(low_roll[new_stat_tier,stat_id],high_roll[new_stat_tier,stat_id]);

ds_map_replace(map,"Stat_"+string(stat_number)+"_tier",new_stat_tier);
ds_map_replace(map,"Stat_"+string(stat_number)+"_value",stat_value);
