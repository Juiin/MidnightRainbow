///scr_get_roll(high/low,stat_type)

var roll = argument0;
var type = argument1;

switch(type)
{
    case "Damage":
    if(roll == "High") return obj_controller.hroll_damage;
    else return obj_controller.lroll_damage;
    break;
    case "Cooldown Reduction":
    if(roll == "High") return obj_controller.hroll_cdr;
    else return obj_controller.lroll_cdr;
    break;
    case "Movement Speed":
    if(roll == "High") return obj_controller.hroll_movspeed;
    else return obj_controller.lroll_movspeed;
    break;
    case "Health":
    if(roll == "High") return obj_controller.hroll_hp;
    else return obj_controller.lroll_hp;
    break;
    case "Defense":
    if(roll == "High") return obj_controller.hroll_defense;
    else return obj_controller.lroll_defense;
    break;
    case "Critical Damage":
    if(roll == "High") return obj_controller.hroll_critdmg;
    else return obj_controller.lroll_critdmg;
    break;
    case "Critical Chance":
    if(roll == "High") return obj_controller.hroll_critchance;
    else return obj_controller.lroll_critchance;
    break;
    case "Stun Recovery":
    if(roll == "High") return obj_controller.hroll_stunrec;
    else return obj_controller.lroll_stunrec;
    break;
    case "Health %":
    if(roll == "High") return obj_controller.hroll_hp_percent;
    else return obj_controller.lroll_hp_percent;
    break;
    case "Pickup Radius":
    if(roll == "High") return obj_controller.hroll_pickup;
    else return obj_controller.lroll_pickup;
    break;
    case "Attack Speed":
    if(roll == "High") return obj_controller.hroll_atkspeed;
    else return obj_controller.lroll_atkspeed;
    break;
}

