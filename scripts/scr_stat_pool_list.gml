///scr_stat_pool_list();

var stat_pool = ds_list_create();
ds_list_add(stat_pool,"Critical Damage");
ds_list_add(stat_pool,"Critical Chance");
ds_list_add(stat_pool,"Stun Recovery");
ds_list_add(stat_pool,"Health %");
ds_list_add(stat_pool,"Pickup Radius");
ds_list_add(stat_pool,"Attack Speed");

return stat_pool;
