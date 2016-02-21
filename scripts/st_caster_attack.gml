var state_duration = room_speed;
if(state_new)
{
    image_blend=c_white
    dir = point_direction(x,y,target.x,target.y);
    
    inst = instance_create(x,y,obj_enemy_caster_proj);
    inst.direction = point_direction(x,y,obj_player_parent.x,obj_player_parent.y);
    inst.speed = 5;
    inst.damage = total_damage;
    inst.duration = room_speed;
}

if(state_timer>=state_duration) state_switch("Attack Recovery");

