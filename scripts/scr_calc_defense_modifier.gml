///scr_calc_defense_modifier(total_defense)
var defense = argument0;
var value = 200;
var modifier = 1;

if(sign(defense) == -1)
{
    modifier = 2 - (value / (value - defense));
}
else
{
    modifier = value / (value + defense);
}

return modifier;
