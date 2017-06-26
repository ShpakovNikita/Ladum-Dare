///get_interract_state()

image_speed = 1 / 3;

var xx = x;
var yy = y;

switch(sprite_index)
{
    case spr_down:
        yy += 8;
        break;
    
    case spr_up:
        yy -= 8;
        break;
    
    case spr_right:
        xx += 10
        break;
        
    case spr_left:
        xx -= 10;
        break;     
}
    
 
var instance = instance_create(xx, yy, obj_interraction);
instance.creator = id;

state = get_move_state;
