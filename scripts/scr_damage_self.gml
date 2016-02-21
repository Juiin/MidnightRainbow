///scr_damage_other(amount)
var amount = argument0;

var actual_dmg = round(amount*total_defense_modifier);

hp -= actual_dmg;
inst = instance_create(x,y,obj_floaty_damage);
inst.text = string(-actual_dmg);
inst.in_col = c_white;
inst.out_col = c_black;
