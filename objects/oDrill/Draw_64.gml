draw_healthbar(10, 10, 330, 50, global.Energy, c_black , c_red, c_blue, 0, true, true)
draw_healthbar(10, 60, 330, 100, global.GoldPercent, c_black , c_yellow, c_yellow, 0, true, true)
draw_text((oHome.x-x+180)*3.79444444,(oHome.y-y+90)*4.26666667,string(global.HouseGold))
if global.housed=1{
	draw_text((oBattery.x-x+180)*3.7944444,(oBattery.y-y+90)*4.26666667,string(global.EnergyCost))
}