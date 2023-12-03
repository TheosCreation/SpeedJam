x = X*8;
y = Y*8;


show_debug_message(SpdY);
if(!place_empty(x,y)){
	if(Jumped == false){
		SpdX = 0;
		SpdY = 0;
		
	}
	if(keyboard_check_pressed(ord("W"))) {
		Jumped = true;
		SpdY = -50;
		
	X+=SpdX/Density;

	Y+=SpdY/Density;
	}
}
else{

	X+=SpdX/Density;

	Y+=SpdY/Density;
	


}

