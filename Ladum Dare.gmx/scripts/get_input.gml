///get_input()

key_left = keyboard_check(ord("A"));
key_right = keyboard_check(ord("D"));
key_up = keyboard_check(ord("W"));
key_down = keyboard_check(ord("S"));

key_interract = mouse_check_button_pressed(mb_right);

key_attack = mouse_check_button_pressed(mb_left);

key_exit = keyboard_check_pressed(vk_escape);

key_blink = keyboard_check_pressed(vk_space);
