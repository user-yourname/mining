if place_meeting(x,y,oDrill){
	if global.housed=0{
		global.housed=1
		global.Energy = 100	
		instance_create_layer(704,128,"Instances",oBattery)
		instance_create_layer(672,128,"Instances",oStorge)
	}
}else{
	global.housed=0
	instance_deactivate_object(oBattery)
	instance_deactivate_object(oStorge)
}

if global.housed == 1 and global.Gold > 0
{
	global.HouseGold += global.Gold
	global.Gold = 0
}
