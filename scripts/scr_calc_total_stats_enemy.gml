///scr_calc_total_stats_enemy()
//needs to be run from object with stat variables

//Damage
total_damage = (base_damage + flat_damage) * (1+more_damage);

//Defense
total_defense = (base_defense + flat_defense) * (1+more_defense);
total_defense_modifier = scr_calc_defense_modifier(total_defense);

//Movement
total_move_speed = base_move_speed * (1+more_move_speed);

//Health
total_health = (base_health + flat_health) * (1+more_health);


