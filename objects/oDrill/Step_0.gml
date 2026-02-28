x_speed = 0; // reset horizontal speed 

y_speed += .5; 

if keyboard_check(vk_right) or keyboard_check(ord("D")){  

    x_speed = walk_speed;  

} else if keyboard_check(vk_left) or keyboard_check(ord("A")){ 

    x_speed = -walk_speed;

}
if (place_meeting(x, y + 1, oRocks))

    if (keyboard_check_pressed(vk_up) or keyboard_check_pressed(ord("W"))) { 

        y_speed = -10; 

    } else { 

        y_speed = 0; 
    }


move_and_collide(x_speed, y_speed, oRocks);
if keyboard_check(vk_right) or keyboard_check(ord("D")) {

    x_speed = walk_speed; 

    image_xscale = 1; // flip heidi's sprite so she faces right

} else if keyboard_check(vk_left) or keyboard_check(ord("A")) {

    x_speed = -walk_speed; 

    image_xscale = -1; // reset her sprite so she faces left

}
if (y > room_height or y < 0 or x > room_width or x < 0) { // if the player is outside of the room

    room_restart(); 

}
draw_healthbar(10, 10, 110, 20, global.Energy, c_black , c_red, c_green, 0, true, true)