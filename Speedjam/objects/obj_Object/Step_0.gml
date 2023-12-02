x = X*8;
y = Y*8;


if (X + SpdX/Mass < GravityHandler.GridResolution-SpdX &&
	X + SpdX/Mass > abs(SpdX))
{
	X+=SpdX/Mass;
}
else{
SpdX*=-1;
}
if (Y + SpdY/Mass < GravityHandler.GridResolution-SpdY &&
	Y + SpdY/Mass > abs(SpdY))
{
	Y+=SpdY/Mass;
	
}
else{
SpdY*=-1;
}

