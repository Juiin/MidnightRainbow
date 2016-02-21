///scr_check_allocated(class,x,y)

var class = argument0;
var xx = argument1;
var yy = argument2;

switch(class)
{
    case "Mage" :
    return mage_tree[# xx,yy];
    break;
}

