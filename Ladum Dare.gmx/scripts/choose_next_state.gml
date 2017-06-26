///choose_next_state();

if(alarm[0] <= 0)
{
    state = choose(get_idle_state, get_wander_state);
    ratgetx = irandom(room_width);
    targety = irandom(room_height);
    
    alarm[0] = room_speed * irandom_range(2, 4);
}
