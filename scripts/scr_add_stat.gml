///scr_add_stat(map);

var map = argument0;


var rarity = map[? "rarity"];
if(rarity >= 4) exit;
var new_rarity = rarity+1;

var stat_pool = scr_stat_pool_list();
ds_list_shuffle(stat_pool);
var stat_type = stat_pool[| 0];
var stat_id = scr_get_stat_id(stat_type);
var stat_tier = irandom(4);


ds_map_add(map,"Stat_"+string(rarity)+"_type",stat_type);
ds_map_add(map,"Stat_"+string(rarity)+"_value",irandom_range(low_roll[stat_tier,stat_id],high_roll[stat_tier,stat_id]));
ds_map_add(map,"Stat_"+string(rarity)+"_tier",stat_tier);
ds_map_replace(map,"rarity",new_rarity);


ds_list_destroy(stat_pool);
