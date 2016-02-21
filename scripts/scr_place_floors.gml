//Create Controller in the middle of the grid
cx = grid_width div 2;
cy = grid_height div 2;

//Create Player
instance_create(cx*CELL_WIDTH+16,cy*CELL_HEIGHT+16,obj_player)

//Place Floors
repeat(floor_tiles)
{
    //Place floor tile at controller position
    grid[# cx,cy] = FLOOR;
    
    if(random(1) < odds)
    {
        c_dir = choose(0,90,180,270);
    }   
    //Move the controller
    cx+=lengthdir_x(1,c_dir);
    cy+=lengthdir_y(1,c_dir);
    
    
    cx = clamp(cx,1,grid_width-2)
    cy = clamp(cy,1,grid_height-2)
}
