///scr_remove_buff(buff_id)
var buff_id = argument0;

switch(buff_id)
{
    case "mage_blink_dmg" :
         more_damage-=0.5;
         scr_calc_total_stats_player();
    break;
    case "enemy_slow_50%" :
         more_move_speed+=0.5;
         scr_calc_total_stats_enemy();
    break;
    case "mage_recharge_50%" :
         recharge_amount-=1;
    break;
    case "mage_fireball_proc" :
    break;
}

