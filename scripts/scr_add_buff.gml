///scr_add_buff(buff_id)
var buff_id = argument0;

switch(buff_id)
{
    case "mage_blink_dmg" :
         more_damage+=0.5;
         scr_calc_total_stats_player();
         ds_list_add(buff_list,ds_map_create());
         ds_map_add(buff_list[| ds_list_size(buff_list)-1],"id","mage_blink_dmg");
         ds_map_add(buff_list[| ds_list_size(buff_list)-1],"time",blink_buff_duration);
         ds_map_add(buff_list[| ds_list_size(buff_list)-1],"kind","buff");
         ds_map_add(buff_list[| ds_list_size(buff_list)-1],"sprite",spr_blink_buff);
    break;
    case "enemy_slow_50%" :
         more_move_speed-=0.5;
         scr_calc_total_stats_enemy();
         ds_list_add(buff_list,ds_map_create());
         ds_map_add(buff_list[| ds_list_size(buff_list)-1],"id","enemy_slow_50%");
         ds_map_add(buff_list[| ds_list_size(buff_list)-1],"time",room_speed*2); //refresh time 
         ds_map_add(buff_list[| ds_list_size(buff_list)-1],"kind","debuff");
    break;
    case "mage_recharge_50%":
         recharge_amount+=1;
         ds_list_add(buff_list,ds_map_create());
         ds_map_add(buff_list[| ds_list_size(buff_list)-1],"id","mage_recharge_50%");
         ds_map_add(buff_list[| ds_list_size(buff_list)-1],"time",room_speed);
         ds_map_add(buff_list[| ds_list_size(buff_list)-1],"kind","buff");
         ds_map_add(buff_list[| ds_list_size(buff_list)-1],"sprite",spr_recharge_buff);
    break;
    case "mage_fireball_proc":
         ds_list_add(buff_list,ds_map_create());
         ds_map_add(buff_list[| ds_list_size(buff_list)-1],"id","mage_fireball_proc");
         ds_map_add(buff_list[| ds_list_size(buff_list)-1],"time",room_speed*3);
         ds_map_add(buff_list[| ds_list_size(buff_list)-1],"kind","debuff");
    break;
}
