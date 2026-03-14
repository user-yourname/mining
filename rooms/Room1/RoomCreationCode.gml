randomise()
global.Energy = 100
global.GoldPercent = 0
global.Bcost = 10
global.Scost = 15
global.housed = 0
global.Capacity = 10
global.OreCount = 
w = 1364/16; //  width
h = 32; // height
global.grid = array_create(w);

for (var i = 0; i < w; i++) {
    global.grid[i] = array_create(h);
    for (var j = 0; j < h; j++) {
        // 10% chance of ore
		if (irandom(100) < 1) {
			global.grid[i][j] = 2; // rare ore
			global.OreCount += 1
		}
       else if (irandom(100) < 10) {
            global.grid[i][j] = 1; // ore
			global.OreCount += 1
        } else {
            global.grid[i][j] = 0; // rock
        }
    }
}
for (var i = 0; i < w; i++) {
    for (var j = 0; j < h; j++) {
        if (global.grid[i][j] == 1) {
            instance_create_layer(i*16, j*16+192, "Instances", oOre);
        }
		 if (global.grid[i][j] == 0) {
            instance_create_layer(i*16, j*16+192, "Instances", oStone);
        }
		 if (global.grid[i][j] == 2) {
			 instance_create_layer(i*16, j*16+192, "Instances", o2Ore);
		 }
    }
}
