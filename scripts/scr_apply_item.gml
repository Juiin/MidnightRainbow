///scr_apply_item(item_string,value)
var item = argument0;
var value = argument1;

switch(item)
{
    case "Damage":
    obj_player_parent.more_damage+=value/100;
    break;
    case "Cooldown Reduction":
    obj_player_parent.total_cd_reduc+=value/100;
    break;
    case "Movement Speed":
    obj_player_parent.more_move_speed+=value/100;
    break;
    case "Health":
    obj_player_parent.flat_health+=value;
    break;
    case "Defense":
    obj_player_parent.flat_defense+=value;
    break;
    case "Critical Damage":
    obj_player_parent.total_crit_damage+=value/100;
    break;
    case "Critical Chance":
    obj_player_parent.total_crit_chance+=value/100;
    break;
    case "Stun Recovery":
    obj_player_parent.total_stun_recovery+=value/100;
    break;
    case "Health %":
    obj_player_parent.more_health+=value/100;
    break;
    case "Pickup Radius":
    obj_player_parent.total_pickup_radius+=value;
    break;
    case "Attack Speed":
    obj_player_parent.more_attack_speed+=value/100;
    break;
}
with(obj_player_parent)
{
    scr_calc_total_stats_player();
    hp = total_health;
}


