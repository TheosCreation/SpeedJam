x = X*8;
y = Y*8;

/*plan
get pos of X and Y vector of current pos 
reverse it to get pos
*/
if(!place_empty(x,y)){
	if(Jumped == false){
		SpdX = 0;
		SpdY = 0;
		
	}
	if(keyboard_check(ord("W"))) {
		Jumped = true;
		SpdY = sign(OldGrid.Y)*2;
		SpdX = sign(OldGrid.X)*2;
	X+=SpdX/Density;

	Y+=SpdY/Density;
	}
	if(keyboard_check(ord("A"))) {
		SpdY = -sign(sin(90)*OldGrid.X + cos(90)*OldGrid.Y);
		SpdX = -sign(cos(90)*OldGrid.X - sin(90)*OldGrid.Y);
		X+=SpdX/Density;

		Y+=SpdY/Density;
	}
	if(keyboard_check(ord("D"))) {
		SpdY = sign(sin(90)*OldGrid.X + cos(90)*OldGrid.Y);
		SpdX = sign(cos(90)*OldGrid.X - sin(90)*OldGrid.Y);
		X+=SpdX/Density;
		Y+=SpdY/Density;
	}
}
else{
//	Jumped = false
	
	X+=SpdX/Density;

	Y+=SpdY/Density;


}

//show_debug_message(Jumped);