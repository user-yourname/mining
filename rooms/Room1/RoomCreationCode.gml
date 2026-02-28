randomise()
global.Energy = 100
// Room generator object: Create Event
var w = 1316/16; // grid width
var h = 32; // grid height
global.grid = array_create(w);

for (var i = 0; i < w; i++) {
    global.grid[i] = array_create(h);
    for (var j = 0; j < h; j++) {
        // 10% chance of ore
		if (irandom(100) < 1) {
			global.grid[i][j] = 2; // rare ore
		}
       else if (irandom(100) < 10) {
            global.grid[i][j] = 1; // ore
        } else {
            global.grid[i][j] = 0; // rock
        }
    }
}

// After generating, place objects
for (var i = 0; i < w; i++) {
    for (var j = 0; j < h; j++) {
        if (global.grid[i][j] == 1) {
            instance_create_layer(i*16, j*16+188, "Instances", oOre);
        }
		 if (global.grid[i][j] == 0) {
            instance_create_layer(i*16, j*16+188, "Instances", oStone);
        }
		 if (global.grid[i][j] == 2) {
			 instance_create_layer(i*16, j*16+188, "Instances", o2Ore);
		 }
    }
}
Draw_healthbar(10, 10, 110, 20, global.Energy, c_black , c_red, c_green, 0, true, true)