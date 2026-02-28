if keyboard_check_pressed(ord("S")) or keyboard_check_pressed(vk_down){
	if keyboard_check(ord("D")) or keyboard_check(vk_right){
		if place_meeting(x-1,y,oDrill){
			instance_deactivate_object(self)
		}
	}else if keyboard_check(ord("A")) or keyboard_check(vk_left){
		if place_meeting(x+1,y,oDrill){
			instance_deactivate_object(self)
		}
	}else if place_meeting(x,y-1,oDrill){
		instance_deactivate_object(self)
	}
}