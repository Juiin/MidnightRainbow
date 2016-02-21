var state_duration = room_speed;
if(state_new)
{
    image_blend=c_red
    dir = point_direction(x,y,target.x,target.y);
    
    scr_spawn_hitbox(x,y,state_duration,spr_enemy_melee_1_hitbox,total_damage,obj_player_parent,true,id,true,-1,0);
    


}
movement_and_collision(dir,total_move_speed*5,obj_wall,true);

if(state_timer>=state_duration || place_meeting(x,y,obj_player_parent)) state_switch("Attack Recovery");

