///get_dash_state()

dir = point_direction(x, y, mouse_x, mouse_y);

if((dir >= 315 && dir <= 360) || (dir >= 0 && dir <= 45))
    sprite_index = spr_right;
    
else if(dir >= 45 && dir <= 135)
    sprite_index = spr_up;
    
else if(dir >= 135 && dir <= 225)
    sprite_index = spr_left;

else 
    sprite_index = spr_down;

phy_position_x += lengthdir_x(spd * 4, dir);
phy_position_y += lengthdir_y(spd * 4, dir);

var dash = instance_create(x, y, obj_dash);

dash.image_index = image_index;
dash.sprite_index = sprite_index; 
