if place_meeting(x,y,oDrill){
	if global.housed=0{
		global.housed=1
		instance_create_layer(688,128,"Instances",oBattery)
		global.Energy = 100	
	}
}else{
	global.housed=0
	instance_deactivate_object(oBattery)
}

if global.housed == 1 and global.Gold > 0
{
	global.HouseGold += global.Gold
	global.Gold = 0
}
