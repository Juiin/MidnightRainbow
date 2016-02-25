///scr_wave(from,to,duration,offset);



var from = argument0;
var to = argument1;
var duration = argument2;
var offset = argument3;

var smth = (to - from) * 0.5;

return from + smth + sin((((current_time / 1000) + duration * offset) / duration) * 6.283185) * smth;
