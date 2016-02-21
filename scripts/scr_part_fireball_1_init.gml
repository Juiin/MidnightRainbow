///scr_part_fireball_1_init();

global.pt_fire_1 = part_type_create();
var pt = global.pt_fire_1;

part_type_shape(pt,pt_shape_explosion);
part_type_size(pt,0.15,0.5,0,0);
part_type_color3(pt,c_yellow,c_red,c_maroon);
part_type_speed(pt,1,3,0,0);
part_type_direction(pt,0,360,0,0);
part_type_blend(pt,true);
part_type_life(pt,4,8);
part_type_alpha2(pt,1,0.5);

