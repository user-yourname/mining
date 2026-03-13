if mouse_check_button_pressed(mb_left) and place_meeting(x,y,Ocursor){
	
	if global.HouseGold >= global.Scost
	{
		global.HouseGold -= global.Scost
		global.Capacity = global.Capacity * StorageChange
		global.Scost = ceil(global.Scost * CostScale)
		
	}
}