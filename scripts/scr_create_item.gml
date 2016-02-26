///scr_create_item(type,rarity,maxtier)
var type = argument0;
var rarity = argument1;
var max_tier = argument2;

var map = ds_map_create();


ds_map_add(map,"type",type);
ds_map_add(map,"rarity",rarity);
ds_map_add(map,"max_tier",max_tier);
ds_map_add(map,"cost",obj_controller.item_cost[rarity,max_tier]);

var sig_stat;
switch(type)
{
    case "red": sig_stat = "Damage"; break;
    case "green": sig_stat = "Cooldown Reduction"; break;
    case "blue": sig_stat = "Movement Speed"; break;
    case "yellow": sig_stat = "Health"; break;
    case "purple": sig_stat = "Defense"; break;
}

var stat_pool = scr_stat_pool_list();


//Add Sig Stat First
var stat = sig_stat;
stat_id = scr_get_stat_id(stat);
stat_tier = irandom(max_tier);
ds_map_add(map,"Stat_"+string(0)+"_type",stat);
ds_map_add(map,"Stat_"+string(0)+"_value",irandom_range(low_roll[stat_tier,stat_id],high_roll[stat_tier,stat_id]));
ds_map_add(map,"Stat_"+string(0)+"_tier",stat_tier);
    
    
for(var i=1;i<rarity;i++)
{
    ds_list_shuffle(stat_pool);
    var stat = stat_pool[| 0];
    ds_list_delete(stat_pool,0);
    stat_id = scr_get_stat_id(stat);
    stat_tier = irandom(max_tier);
    ds_map_add(map,"Stat_"+string(i)+"_type",stat);
    ds_map_add(map,"Stat_"+string(i)+"_value",irandom_range(low_roll[stat_tier,stat_id],high_roll[stat_tier,stat_id]));
    ds_map_add(map,"Stat_"+string(i)+"_tier",stat_tier);
}

ds_list_destroy(stat_pool);

return map;
