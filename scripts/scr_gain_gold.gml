///scr_gain_exp(amount)
var amount = argument0;

global.gold+=amount;
inst = instance_create(obj_player_parent.x,obj_player_parent.y,obj_floaty_damage);
inst.in_col = c_orange;
inst.out_col = c_black;
inst.text = "+ "+string(amount)+" Gold";
