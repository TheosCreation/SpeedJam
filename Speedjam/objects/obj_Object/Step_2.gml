if(OldGrid!=GravityHandler.grid[floor(X)][floor(Y)]){
	
		SpdX-=GravityHandler.grid[floor(X)][floor(Y)].X/100;
		SpdY-=GravityHandler.grid[floor(X)][floor(Y)].Y/100;
		OldGrid = GravityHandler.grid[floor(X)][floor(Y)];
	

}