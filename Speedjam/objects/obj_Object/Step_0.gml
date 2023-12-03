x = X*8//(GravityHandler.GridResolution/20);
y = Y*8//(GravityHandler.GridResolution/20);



/*if(!place_empty(x,y)){
	

	SpdX = 0;
	SpdY = 0;
}
else{*/
TOTx = X+(SpdX/Density)+Mass;
TOTy = Y+(SpdY/Density)+Mass;
if( TOTx>5&&
	TOTx<GravityHandler.GridResolution-5&&
	TOTy>5&&
	TOTy<GravityHandler.GridResolution-5){
	
}
else{
	
	SpdX*=-1;
	SpdY*=-1;
}
X+=SpdX/Density;
	Y+=SpdY/Density;

//}