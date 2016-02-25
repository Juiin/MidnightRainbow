///scr_pos_inside(x,y,left,top,right,bottom)
var xx = argument0;
var yy = argument1;
var left = argument2;
var top = argument3;
var right = argument4;
var bottom = argument5;

if(xx > left && xx < right && yy > top && yy < bottom) return true;
else return false;
