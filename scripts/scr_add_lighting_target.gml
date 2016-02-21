///scr_add_lighting_target(target,first_circle_alpha,first_circle_radius,second_circle_alpha,second_circle_radius,random_offset)
var target = argument0;
var f_c_alpha = argument1;
var f_c_radius = argument2;
var s_c_alpha = argument3;
var s_c_radius = argument4;
var offset = random_range(-argument5,argument5);

if(instance_exists(target))
{
    //first(bigger circle)
    draw_set_alpha(f_c_alpha);
    with(target)
    {
        draw_circle(x  - view_xview[0], y  - view_yview[0],f_c_radius + offset,false);
    }
    draw_set_alpha(s_c_alpha);
    with(target)
    {
        draw_circle(x  - view_xview[0], y  - view_yview[0],s_c_radius + offset,false);
    }
}

