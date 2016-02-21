///scr_refresh_cd(class,skill_id)
var class = argument0;
var skill = argument1;

if(class == "Mage")
{
    switch(skill)
    {
        case 0:
        blink_charges = blink_charges_max;
        blink_recharge_timer = 0;
        break;
        case 1:
        tower_charges = tower_charges_max;
        tower_recharge_timer = 0;
        break;
        case 2:
        flameblast_charges = flameblast_charges_max;
        flameblast_recharge_timer = 0;
        break;
        case 3:
        with(four_cd) instance_destroy();
        break;
        case 4:
        with(left_cd) instance_destroy();
        break;
    }
    
}

