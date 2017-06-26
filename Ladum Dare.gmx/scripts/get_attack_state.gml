///get_attack_state()

audio_emitter_pitch(audio_em, random_range(.8, 1.2));


image_speed = 1 / 3;

switch(sprite_index)
{
    case spr_down:
        sprite_index = spr_attack_down;
        break;
    
    case spr_up:
        sprite_index = spr_attack_up;
        break;
    
    case spr_right:
        sprite_index = spr_attack_right;
        break;
        
    case spr_left:
        sprite_index = spr_attack_left;
        break;     
}
    
if(attacked == false && image_index > 3)
{
    var xx = x;
    var yy = y;
    
    audio_emitter_pitch(audio_em, random_range(.85, 1.15));
    var snd = audio_play_sound_on(audio_em, sound_sword, false, .8);
    audio_sound_gain(snd, .3, 0);
    
    switch(sprite_index)
    {
        case spr_attack_down:
            yy += 8;
            break;
    
        case spr_attack_up:
            yy -= 8;
            break;
        
        case spr_attack_right:
            xx += 10
            break;
            
        case spr_attack_left:
            xx -= 10;
            break;     
    }
    
    var instance = instance_create(xx, yy, obj_damage);
    instance.creator = id;
    attacked = true;
}
