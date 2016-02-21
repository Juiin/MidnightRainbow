///scr_calc_total_stats_player()
//needs to be run from object with stat variables

//Damage
//total_damage = (base_damage + flat_damage) * (1+more_damage);
total_damage = (base_damage * (1+more_damage)) + flat_damage ;

//Defense
total_defense = (base_defense + flat_defense) * (1+more_defense);
total_defense_modifier = scr_calc_defense_modifier(total_defense);

//Movement
total_move_speed = base_move_speed * (1+more_move_speed);

//Health
total_health = (base_health + flat_health) * (1+more_health);

//Cooldown
total_cd_reduc = clamp(total_cd_reduc,0,max_cd_reduc);

//Stun Recovery
knockback_duration = base_knockback_duration * (1-total_stun_recovery);

//Attack Speed
total_attack_speed = base_attack_speed * (1+more_attack_speed);
total_attack_speed_cd = (1 / total_attack_speed)*room_speed;
