///scr_get_stat_string(stat_type,stat_value,stat_tier,rarity,seperator?)
var stat_type = argument0;
var stat_value = argument1;
var stat_tier = argument2;
var rarity = argument3;
var seperator = argument4;

var str = "+";

switch(stat_type)
{
    case "Damage":
    str = string_insert(string(stat_value)+"% "+string(stat_type)+"    ",str,string_length(str)+1);
    break;
    case "Cooldown Reduction":
    str = string_insert(string(stat_value)+"% "+string(stat_type)+"    ",str,string_length(str)+1);
    break;
    case "Movement Speed":
    str = string_insert(string(stat_value)+"% "+string(stat_type)+"    ",str,string_length(str)+1);
    break;
    case "Health":
    str = string_insert(string(stat_value)+" "+string(stat_type)+"    ",str,string_length(str)+1);
    break;
    case "Defense":
    str = string_insert(string(stat_value)+" "+string(stat_type)+"    ",str,string_length(str)+1);
    break;
    case "Critical Damage":
    str = string_insert(string(stat_value)+"% "+string(stat_type)+"    ",str,string_length(str)+1);
    break;
    case "Critical Chance":
    str = string_insert(string(stat_value)+"% "+string(stat_type)+"    ",str,string_length(str)+1);
    break;
    case "Stun Recovery":
    str = string_insert(string(stat_value)+"% "+string(stat_type)+"    ",str,string_length(str)+1);
    break;
    case "Health %":
    str = string_insert(string(stat_value)+"% "+"increased Health"+"    ",str,string_length(str)+1);
    break;
    case "Pickup Radius":
    str = string_insert(string(stat_value)+" "+string(stat_type)+"    ",str,string_length(str)+1);
    break;
    case "Attack Speed":
    str = string_insert(string(stat_value)+"% "+string(stat_type)+"    ",str,string_length(str)+1);
    break;
}
str = string_insert(scr_int_to_roman(stat_tier)+" #",str,string_length(str)+1);

if((stat_type == "Damage" || stat_type == "Cooldown Reduction" || stat_type == "Movement Speed" || stat_type == "Health" || stat_type == "Defense") && rarity > 1 && seperator)
{
    str = string_insert("----------------#",str,string_length(str)+1);
}



return str;
