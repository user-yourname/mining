if mouse_check_button_pressed(mb_left) and place_meeting(x,y,Ocursor){
	
	if global.HouseGold >= global.Bcost
	{
		global.HouseGold -= global.Bcost
		global.EnergyCost = global.EnergyCost * EnergyCostChange
		global.Bcost = global.Bcost * CostScale
		
	}
}