x = X*8;
y = Y*8;


if (X + SpdX/Density < GravityHandler.GridResolution-SpdX/Density &&
	X + SpdX/Density > abs(SpdX/Density))
{
	X+=SpdX/Density;
}
else{
SpdX*=-1;
}
if (Y + SpdY/Density < GravityHandler.GridResolution-SpdY/Density &&
	Y + SpdY/Density > abs(SpdY/Density))
{
	Y+=SpdY/Density;
	
}
else{
SpdY*=-1;
}

