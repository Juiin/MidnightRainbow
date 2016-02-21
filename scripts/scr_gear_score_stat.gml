///scr_gear_score_stat(stat_type,stat_value)


var stat_type = argument0;
var stat_value = argument1;

var stat_id = scr_get_stat_id(stat_type);

var ret = scr_range_convert(low_roll[0,stat_id],high_roll[array_height_2d(high_roll)-1,stat_id],10,100,stat_value);

return ret;


/*
if(stat_type == "Damage" || stat_type == "Critical Damage" || stat_type == "Critical Chance" || stat_type == "Attack Speed")
{
    return scr_range_convert(scr_get_roll("Low",stat_type),scr_get_roll("High",stat_type),10,100,stat_value);
}
else if(stat_type == "Defense" || stat_type == "Stun Recovery" || stat_type == "Health" || stat_type == "Health %")
{
    return scr_range_convert(scr_get_roll("Low",stat_type),scr_get_roll("High",stat_type),10,100,stat_value);
}
else if(stat_type == "Cooldown Reduction" || stat_type == "Movement Speed" || stat_type == "Pickup Radius")
{
    return scr_range_convert(scr_get_roll("Low",stat_type),scr_get_roll("High",stat_type),10,100,stat_value);
}





