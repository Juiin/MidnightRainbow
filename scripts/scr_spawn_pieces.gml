///scr_spawn_pieces(x_parts,y_parts,sprite,sub_img);
var x_parts = argument0;
var y_parts = argument1;

var sprite = argument2;
var sub_img = argument3;

var width = sprite_get_width(sprite) div x_parts;
var height = sprite_get_height(sprite) div y_parts;

for(var i=0;i<x_parts;i++)
{
    for(var j=0;j<y_parts;j++)
    {
        var inst = instance_create(x,y,obj_shattered_piece);
        inst.sprite = sprite;
        inst.sub_img = sub_img;
        inst.start_x = width*i;
        inst.start_y = height*j;
        inst.width = width;
        inst.height = height;
    }
}

