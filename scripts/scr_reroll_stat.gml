///scr_reroll_stat(map,stat_number)

var map = argument0;
var stat_number = argument1;

//Store old stat_type
var old_stat_type = map[? "Stat_"+string(stat_number)+"_type"];

//Create List of the Stat Pool and Remove Old Stat Type so it's always different
var stat_pool = scr_stat_pool_list();
var list_index = ds_list_find_index(stat_pool,old_stat_type);
ds_list_delete(stat_pool,list_index);

//Randomize List
ds_list_shuffle(stat_pool);
var stat_type = stat_pool[| 0];

//Get Tier since it stays the same
var stat_tier = map[? "Stat_"+string(stat_number)+"_tier"];

var stat_id = scr_get_stat_id(stat_type);

//Set new stat_value based on old tier
var stat_value = irandom_range(low_roll[stat_tier,stat_id],high_roll[stat_tier,stat_id]);

//Replace stat_type & stat_value
ds_map_replace(map,"Stat_"+string(stat_number)+"_type",stat_type);
ds_map_replace(map,"Stat_"+string(stat_number)+"_value",stat_value);

//Cleanup
ds_list_destroy(stat_pool);
