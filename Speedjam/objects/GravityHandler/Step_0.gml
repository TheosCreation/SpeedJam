for (var i = 0; i < GridResolution; i++) {
    for (var j = 0; j < GridResolution; j++) {
	grid[i][j] = {
			X:0,
			Y:0
		};

	}
}



for(var i = 0; i< array_length(ObjList);i++){
	tempMass = ObjList[i].Mass;

	tempStrenght = 0;
	for (var j = -tempMass; j < tempMass+1; j++) {
		for (var k = -tempMass; k < tempMass+1; k++) {
		if ((ObjList[i].X + j < GridResolution &&
            ObjList[i].X + j >= 0 &&
            ObjList[i].Y + k < GridResolution &&
            ObjList[i].Y + k >= 0)&&j!=0||k!=0)
			{
                tempStrenght =abs(((abs(j) + abs(k)) / 2)-tempMass);
				grid[ObjList[i].Y + j][ObjList[i].X + k].X = tempStrenght*sign(j);
                grid[ObjList[i].Y + j][ObjList[i].X + k].Y = tempStrenght*sign(k);
             }

		}
	}
}