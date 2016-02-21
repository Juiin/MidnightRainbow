///scr_deallocate_skill_points(x,y,class)
var xx = argument0;
var yy = argument1;
var class = argument2; //String

switch(class)
{
    case "Mage":
        switch(yy)
        {
            case 0:
                 switch(xx)
                 {
                     case 2:
                     obj_player_parent.fireball_projectiles--;
                     break;
                     case 3:
                     obj_player_parent.fireball_damage_increased-=0.2;
                     break;
                     case 4:
                     obj_player_parent.fireball_projectiles--;
                     break;
                     case 5:
                     obj_player_parent.bground_damage_increased-=0.3;
                     break;
                     case 6:
                     obj_player_parent.fireball_projectiles--;
                     break;
                 }
            break;
            case 1:
                 switch(xx)
                 {
                     case 2:
                     obj_player_parent.fireball_damage_increased-=0.2;
                     break;
                     case 3:
                     obj_player_parent.fireball_speed_more-=0.2;
                     scr_calc_fireball_speed_total();
                     break;
                     case 4:
                     obj_player_parent.flameblast_size_more-=0.25;
                     scr_calc_flameblast_size_total();
                     break;
                     case 5:
                     obj_player_parent.bground_damage_increased-=0.3;
                     break;
                     case 6:
                     obj_player_parent.fireball_speed_more-=0.2;
                     scr_calc_fireball_speed_total();
                     break;
                 }
            break;
            case 2:
                 switch(xx)
                 {
                     case 2:
                     obj_player_parent.fireball_damage_increased-=0.2;
                     break;
                     case 3:
                     obj_player_parent.fireball_speed_more-=0.2;
                     scr_calc_fireball_speed_total();
                     break;
                     case 4:
                     obj_player_parent.flameblast_size_more-=0.25;
                     scr_calc_flameblast_size_total();
                     break;
                     case 5:
                     obj_player_parent.fireball_projectiles--;
                     break;
                     case 6:
                     obj_player_parent.fireball_speed_more-=0.2;
                     scr_calc_fireball_speed_total();
                     break;
                 }
            break;
            case 3:
                 switch(xx)
                 {
                     case 0:
                     obj_player_parent.bground_slow = false;
                     break;
                     case 1:
                     obj_player_parent.bground_damage_increased-=0.3;
                     break;
                     case 2:
                     obj_player_parent.bground_damage_increased-=0.3;
                     break;
                     case 3:
                     obj_player_parent.fireball_damage_increased-=0.2;
                     break;
                     case 4:
                     obj_player_parent.fireball_pierce_chance-=0.2;
                     break;
                     case 5:
                     obj_player_parent.fireball_pierce_chance-=0.2;
                     break;
                     case 6:
                     obj_player_parent.fireball_pierce_chance-=0.2;
                     break;
                     case 7:
                     obj_player_parent.flameblast_damage_increased-=0.2;
                     break;
                 }
            break;
            case 4:
                 switch(xx)
                 {
                     case 2:
                     obj_player_parent.charge_up_cdr-=0.2;
                     break;
                     case 3:
                     obj_player_parent.bground_damage_increased-=0.3;
                     break;
                     case 5:
                     obj_player_parent.bground_radius_more-=0.3
                     scr_calc_bground_radius_total();
                     break;
                     case 6:
                     obj_player_parent.flameblast_size_more-=0.25;
                     scr_calc_flameblast_size_total();
                     break;
                     case 7:
                     obj_player_parent.flameblast_size_more-=0.25;
                     scr_calc_flameblast_size_total();
                     break;
                     case 8:
                     obj_player_parent.flameblast_fireball_proc = false;
                     break;
                 }
            break;
            case 5:
                 switch(xx)
                 {
                     case 2:
                     obj_player_parent.charge_up_cdr-=0.2;
                     break;
                     case 3:
                     obj_player_parent.bground_radius_more-=0.3
                     scr_calc_bground_radius_total();
                     break;
                     case 4:
                     obj_player_parent.tower_attack_delay_more-=0.1;
                     scr_calc_tower_attack_delay_total();
                     break;
                     case 5:
                     obj_player_parent.bground_duration_more-=0.5;
                     scr_calc_bground_duration_total();
                     break;
                     case 6:
                     obj_player_parent.bground_duration_more-=0.5;
                     scr_calc_bground_duration_total();
                     break;
                     case 7:
                     obj_player_parent.flameblast_size_more-=0.25;
                     scr_calc_flameblast_size_total();
                     break;
                     case 8:
                     obj_player_parent.flameblast_damage_increased-=0.2;
                     break;
                 }
            break;
            case 6:
                 switch(xx)
                 {
                     case 1:
                     obj_player_parent.charge_up_charges--;
                     break;
                     case 2:
                     obj_player_parent.blink_charges_max--;
                     break;
                     case 3:
                     obj_player_parent.bground_radius_more-=0.3
                     scr_calc_bground_radius_total();
                     break;
                     case 4:
                     obj_player_parent.tower_attack_delay_more-=0.1;
                     scr_calc_tower_attack_delay_total();
                     break;
                     case 5:
                     obj_player_parent.bground_duration_more-=0.5;
                     scr_calc_bground_duration_total();
                     break;
                     case 6:
                     obj_player_parent.bground_duration_more-=0.5;
                     scr_calc_bground_duration_total();
                     break;
                     case 7:
                     obj_player_parent.flameblast_size_more-=0.25;
                     scr_calc_flameblast_size_total();
                     break;
                     case 8:
                     obj_player_parent.flameblast_spawn_bground=false;
                     break;
                 }
            break;
            case 7:
                 switch(xx)
                 {
                     case 1:
                     obj_player_parent.blink_buff = false;
                     break;
                     case 2:
                     obj_player_parent.bground_radius_more-=0.3
                     scr_calc_bground_radius_total();
                     break;
                     case 3:
                     obj_player_parent.bground_radius_more-=0.3
                     scr_calc_bground_radius_total();
                     break;
                     case 4:
                     obj_player_parent.tower_attack_delay_more-=0.1;
                     scr_calc_tower_attack_delay_total();
                     break;
                     case 5:
                     obj_player_parent.tower_duration_more-=0.25;
                     scr_calc_tower_duration_total();
                     break;
                     case 6:
                     obj_player_parent.tower_duration_more-=0.25;
                     scr_calc_tower_duration_total();
                     break;
                     case 7:
                     obj_player_parent.tower_duration_more-=0.25;
                     scr_calc_tower_duration_total();
                     break;
                 }
            break;
            case 8:
                 switch(xx)
                 {
                     case 6:
                     obj_player_parent.tower_recharge_buff = false;
                     break;
                 }
            break;       
        }
    break;
}

