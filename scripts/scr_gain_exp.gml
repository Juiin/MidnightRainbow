///scr_gain_exp(amount)
var amount = argument0;

obj_player_parent.current_exp+=amount;
inst = instance_create(obj_player_parent.x,obj_player_parent.y,obj_floaty_damage);
inst.in_col = c_purple;
inst.out_col = c_black;
inst.text = "+ "+string(amount)+" EXP";
