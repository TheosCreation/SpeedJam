for (var i = 0; i < GridResolution; i++) {
    for (var j = 0; j < GridResolution; j++) {
		/*if(i<10){
			grid[i][j] = {
			X:100,
			Y:0
			};
			continue;
		}
		else if (i>150){
			grid[i][j] = {
			X:-100,
			Y:0
			};
			continue;
		}
		if(j<10){
			grid[i][j] = {
			X:0,
			Y:100
			};
			continue;
		}
		else if (j>150){
			grid[i][j] = {
			X:0,
			Y:-100
			};
			continue;
		}*/
		
	grid[i][j] = {
			X:0,
			Y:0
		};

	}
}





/*
for (var i = 0; i < array_length(ObjList); i++) {
    tempMass = ObjList[i].Mass;

    tempStrength = 0;
    for (var theta = 0; theta <= 2 * pi; theta += 0.1) {
        var circleX = round(tempMass * cos(theta));
        var circleY = round(tempMass * sin(theta));

        for (var j = -tempMass; j <= tempMass; j++) {
            for (var k = -tempMass; k <= tempMass; k++) {
                var posX = ObjList[i].X + circleX + j;
                var posY = ObjList[i].Y + circleY + k;

                if (
                    posX < GridResolution &&
                    posX >= 0 &&
                    posY < GridResolution &&
                    posY >= 0 &&
                    (j != 0 || k != 0)
                ) {
                    tempStrength = abs(((abs(j) + abs(k)) / 2) - tempMass);
                    grid[posX][posY].X += tempStrength * sign(j);
                    grid[posX][posY].Y += tempStrength * sign(k);
                } else {
                    // Handle boundary conditions or skip invalid positions
                    continue;
                }
            }
        }
    }
}

// Initialization
cosValues = ds_list_create();
sinValues = ds_list_create();
thetaStep = 0.1;

// Precompute cos and sin values
for (var theta = 0; theta <= 360; theta += thetaStep) {
    ds_list_add(cosValues, lengthdir_x(1, theta));
    ds_list_add(sinValues, lengthdir_y(1, theta));
}

// Main Loop
for (var i = 0; i < array_length(ObjList); i++) {
    var tempMass = ObjList[i].Mass;

    for (var thetaIndex = 0; thetaIndex < ds_list_size(cosValues); thetaIndex++) {
        var circleX = round(tempMass * ds_list_find_value(cosValues, thetaIndex));
        var circleY = round(tempMass * ds_list_find_value(sinValues, thetaIndex));

        // Iterate through positions in the circle
        for (var j = -tempMass; j <= tempMass; j++) {
            var posX = ObjList[i].X + circleX + j;
            var posY = ObjList[i].Y + circleY;

            if (
                posX < GridResolution &&
                posX >= 0 &&
                posY < GridResolution &&
                posY >= 0 &&
                (j != 0)
            ) {
                var tempStrength = abs(j) - tempMass;
                grid[posX][posY].X += tempStrength * sign(j);
                grid[posX][posY].Y += tempStrength;
            }
        }

        // Iterate through positions in the circle
        for (var k = -tempMass; k <= tempMass; k++) {
            var posX = ObjList[i].X + circleX;
            var posY = ObjList[i].Y + circleY + k;

            if (
                posX < GridResolution &&
                posX >= 0 &&
                posY < GridResolution &&
                posY >= 0 &&
                (k != 0)
            ) {
                var tempStrength = abs(k) - tempMass;
                grid[posX][posY].X += tempStrength;
                grid[posX][posY].Y += tempStrength * sign(k);
            }
        }
    }
}

// Cleanup
ds_list_destroy(cosValues);
ds_list_destroy(sinValues);

*/