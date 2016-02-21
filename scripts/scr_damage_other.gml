///scr_damage_other(amount)
var amount = argument0;

var actual_dmg = round(amount*other.total_defense_modifier)

other.hp -= actual_dmg;
inst = instance_create(other.x,other.y,obj_floaty_damage);
inst.text = string(-actual_dmg);
inst.out_col = c_black;
inst.in_col = c_white;
