if(instance_exists(obj_player_parent))
{
    var dest_x,dest_y;
    var player_x = obj_player_parent.x;
    var player_y = obj_player_parent.y;
    dest_x = player_x
    dest_y = player_y
    
    
    x += (dest_x-x)/10;
    y += (dest_y-y)/10;
}


