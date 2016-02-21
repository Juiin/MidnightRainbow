///scr_calc_damage(specific_damage_increased)
var more_dmg = 1+argument0;

var crit = scr_chance(obj_player_parent.total_crit_chance);
var crit_dmg = 1+(crit*obj_player_parent.total_crit_damage);

//          Total Player Damage        * Argument * Effectiveness * Crit DMG
var dmg = obj_player_parent.total_damage*more_dmg*damage_eff*crit_dmg;



return dmg;
