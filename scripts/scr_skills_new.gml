
//Inputs
scr_skill_inputs();

if(global.class = "Mage")
{
    //Left Click
    if (left_check && !instance_exists(left_cd))
    {
        
        left_cd = scr_cooldown(total_attack_speed_cd,4);
        
        var spacing = 90 / (fireball_projectiles+1);
        var dir_start = point_direction(x,y,mouse_x,mouse_y)-45 mod 360;
        for(var i = 1; i<=fireball_projectiles;i++)
        {
            fb = instance_create(x,y,obj_fireball);
            fb.direction = dir_start+ (spacing*i) mod 360;
            fb.proj_id = proj_id;
            if(scr_chance(fireball_pierce_chance)) fb.pierce = true;
        }
        proj_id++;
    }
    
    //Blink
    if(one_pressed && !instance_exists(obj_global_cooldown) && blink_charges > 0)
    {
        //scr_global_cooldown(room_speed/2);
        scr_blink();
        if(blink_buff)
        {
            if(scr_check_buff("mage_blink_dmg")) 
            {
                scr_refresh_buff("mage_blink_dmg",blink_buff_duration);
            }
            else scr_add_buff("mage_blink_dmg");
        }
        blink_charges--;
    }
    //tower
    if(two_pressed && !instance_exists(obj_global_cooldown) && tower_charges > 0)
    {
        draw_tower_range = true;
    }
    if(two_released && !instance_exists(obj_global_cooldown) && tower_charges > 0 
    && point_distance(x,y,mouse_x,mouse_y) <= tower_place_range
    && !collision_line(x,y,mouse_x,mouse_y,obj_wall,true,true)
    && !position_meeting(mouse_x,mouse_y,obj_wall))
    {
        draw_tower_range = false;
        tower_charges--;
        ft = instance_create(mouse_x,mouse_y,obj_fire_tower);
        ft.projectiles = fireball_projectiles;
        //scr_global_cooldown(room_speed/2);
    }
    else if(two_released) draw_tower_range = false;
    
    //Flameblast
    if(three_pressed && !instance_exists(obj_global_cooldown) && flameblast_charges > 0)
    {
        draw_flameblast_range=true;
    }
    if(three_released && !instance_exists(obj_global_cooldown) && flameblast_charges > 0 
    && point_distance(x,y,mouse_x,mouse_y) <= flameblast_place_range
    && !collision_line(x,y,mouse_x,mouse_y,obj_wall,true,true)
    && !position_meeting(mouse_x,mouse_y,obj_wall))
    {
        draw_flameblast_range=false;
        instance_create(mouse_x,mouse_y,obj_flameblast)
        flameblast_charges--;
        //scr_global_cooldown(room_speed/2);
    }
    else if(three_released) draw_flameblast_range = false;
    
    //Charge UP
    if(four_pressed && !instance_exists(four_cd))
    {
        blink_charges+=charge_up_charges;
        tower_charges+=charge_up_charges;
        flameblast_charges+=charge_up_charges;
        four_cd = scr_cooldown(charge_up_cd,3);
    }
}

