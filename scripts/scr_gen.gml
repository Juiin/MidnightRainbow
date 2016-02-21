///scr_gen(global.area,value_string);

var area = argument0;
var value = argument1;

switch(area)
{
    case "Normal":
         switch(value)
         {
            case "grid_width": return 50; break;
            case "grid_height": return 50; break;
            case "max_floor_tiles": return 100; break;   
            case "5x5_chance": return 0; break;
            case "4x4_chance": return 0; break;
            case "3x3_chance": return 0; break;
            case "2x2_chance": return 0.2; break;
            case "180_turn": return 0; break;
            case "-90_turn": return 0.2; break;
            case "+90_turn": return 0.2; break;
            case "c_spawn_base": return 0.01; break;
            case "c_spawn_decrease": return 0.002; break;
            case "c_destroy_base": return 0.01; break;
            case "c_destroy_increase": return 0.01; break;
            case "floor_tile_01": return bg_floor; break;
            case "wall_tile_01": return bg_wall; break;
            case "wall_tile_02": return bg_wall_down; break;
            case "void_tile_01": return bg_void; break;
            case "exit_tile_01": return bg_exit; break;
            //Enemies
            //Deco
         }
    break;
}

