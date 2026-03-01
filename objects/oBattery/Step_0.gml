if mouse_check_button_pressed(mb_left) and place_meeting(x,y,Ocursor){
	
	if global.HouseGold >= cost
	{
		global.HouseGold -= cost
		global.EnergyCost = global.EnergyCost * EnergyCostChange
		show_message(global.EnergyCost)
		cost = cost * CostScale
		
	}
}