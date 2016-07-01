///scr_mouse_inside_key(row,column);
var row = argument0;
var col = argument1;

var val = scr_pos_inside(mouse_x,mouse_y,820+(218*col),10+(row*58),1038+(218*col),58+(row*58));

return val;
