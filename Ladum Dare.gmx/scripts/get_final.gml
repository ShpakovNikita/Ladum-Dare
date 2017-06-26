if(keyboard_check(ord("R")))
{
    var fade = instance_create(0, 0, obj_fade);
    fade.inversed = true;
    fade.image_alpha = 0;
    fade.step_speed = .005;
    alarm[0] = room_speed * 2;
    audio_sound_gain(global.snd_1, 0, 2000);
}
