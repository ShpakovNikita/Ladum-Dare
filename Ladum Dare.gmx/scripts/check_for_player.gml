///check_for_player()

if(instance_exists(obj_player))
{
    var dis = point_distance(x, y, obj_player.x, obj_player.y);
    if(dis <= sight)
    {
        state = get_chase_state;
        targetx = obj_player.x;
        targety = obj_player.y;
    }
    else
        choose_next_state();
}
else
    choose_next_state();