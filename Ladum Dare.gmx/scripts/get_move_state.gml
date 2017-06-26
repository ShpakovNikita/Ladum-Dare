///get_move_state()

get_input();

image_blend = c_white;

var vspd = key_down - key_up;
var hspd = key_right - key_left;

if(instance_exists(obj_fade))
{   
    state = get_player_stay_state;
}

if(key_interract)
{
    image_index = 0;
    state = get_interract_state;
}
if(key_attack)
{
    image_index = 0;
    state = get_attack_state;
}

if(key_blink && can_blink)
{
    state = get_dash_state;
    alarm[0] = room_speed / 7;
    can_blink = false;
    alarm[2] = 50;
}

if(vspd == 0 && hspd == 0)
{
    dir = point_direction(x, y, mouse_x, mouse_y);

    if((dir >= 315 && dir <= 360) || (dir >= 0 && dir <= 45))
        sprite_index = spr_right;
        
    else if(dir >= 45 && dir <= 135)
        sprite_index = spr_up;
        
    else if(dir >= 135 && dir <= 225)
        sprite_index = spr_left;
    
    else 
        sprite_index = spr_down;   
        
    var len = 0;
}
else 
    var len = spd;
    
if(hspd != 0 || vspd !=0)
{
    dir = point_direction(0, 0, hspd, vspd);
    phy_position_x += lengthdir_x(len, dir);
    phy_position_y += lengthdir_y(len, dir);
}


image_speed = len * .1;
if(len == 0) image_index = 0;

if(vspd > 0)
    sprite_index = spr_down;
else if(vspd < 0)
    sprite_index = spr_up;
    
if(hspd > 0)
    sprite_index = spr_right;
else if(hspd < 0)
    sprite_index = spr_left;
    
