///scr_button_create(x,y,button_sprite,button_text,script);
var xx = argument0;
var yy = argument1;
var sprite = argument2;
var text = argument3;
var script = argument4;

var inst = instance_create(xx,yy,obj_button);
inst.sprite_index = sprite;
inst.button_text = text;
inst.script = script;
inst.script_argument = argument5;
