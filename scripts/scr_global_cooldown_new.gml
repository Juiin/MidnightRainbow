///scr_global_cooldown(duration)
var dur = argument0;

inst = instance_create(0,0,obj_global_cooldown);
inst.duration = dur;
inst.init_duration = dur;

return inst;
