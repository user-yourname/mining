if place_meeting(x,y,oDrill){
	if global.housed=0{
		global.housed=1
		instance_create_layer(688,128,"Instances",oBattery)
	}
}else{
	global.housed=0
	instance_deactivate_object(oBattery)
}