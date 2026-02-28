random_get_seed()
// Room generator object: Create Event
var w = 1316/16; // grid width
var h = 32; // grid height
global.grid = array_create(w);

for (var i = 0; i < w; i++) {
    global.grid[i] = array_create(h);
    for (var j = 0; j < h; j++) {
        // 20% chance of ore
        if (irandom(100) < 10) {
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
    }
}
