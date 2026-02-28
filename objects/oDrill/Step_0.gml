x_speed = 0; // reset horizontal speed 

y_speed += .5; 

if keyboard_check(vk_right) or keyboard_check(ord("D")){  

    x_speed = walk_speed;  

} else if keyboard_check(vk_left) or keyboard_check(ord("A")){ 

    x_speed = -walk_speed;

}
if (place_meeting(x, y + 1, oSolid)) { 

    if (keyboard_check_pressed(vk_up) or keyboard_check_pressed(ord("W"))) { 

        y_speed = -10; 

    } else { 

        y_speed = 0; 
    }

}

move_and_collide(x_speed, y_speed, oSolid);