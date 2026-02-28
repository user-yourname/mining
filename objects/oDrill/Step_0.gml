if (place_meeting(x, y + 1, oSoild)) {

    if (keyboard_check_pressed(vk_up)) {

        y_speed = -10;

    } else {

        y_speed = 0;

    }

}

if keyboard_check(ord("A")){
	x_speed=-movement_speed
	image_xscale=-1
}else if keyboard_check(ord("D")){
	x_speed=movement_speed
	image_xscale=1
}else{
	x_speed=0
}

move_and_collide(x_speed,y_speed,oSoild)