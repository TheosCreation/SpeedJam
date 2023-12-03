X = (x/(GravityHandler.GridResolution/20));
Y = (y/(GravityHandler.GridResolution/20));
Mass = 10;
Density = Mass/20; //determines how much gravityt affects it
GravityHandler.ObjCount++;

GravityHandler.ObjList[GravityHandler.ObjCount] = id;
OldGrid = {
			X:0,
			Y:0
		};;
SpdX = 0.0;
SpdY = 0.0;