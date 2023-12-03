/// @description Insert description here
// You can write your code in this editor




for(var i = 0; i< array_length(ObjList);i++){
	tempMass = ObjList[i].Mass;
	tempObjX = (ObjList[i].X);
	tempObjY = (ObjList[i].Y);
	tempSpdX = ObjList[i].SpdX;
	tempSpdY = ObjList[i].SpdY;
	tempStrenght = 0;
	

	for (var j = -tempMass; j < tempMass+1; j++) {
		//show_debug_message(1+tempMass+ abs(ObjList[i].SpdY+10));
		for (var k = -tempMass; k < tempMass+1; k++) {
		
		if (!Hit&&
		j!=0||k!=0&&
		tempObjX+j<GridResolution && tempObjX+j > 0&&
		tempObjX+k<GridResolution && tempObjX+k > 0&&
		tempObjY+j<GridResolution && tempObjY+j > 5&&
		tempObjY+j<GridResolution && tempObjY+k > 5) 
			
			{	
                tempStrenght =abs(((abs(j) + abs(k)) / 2)-tempMass);
				grid[tempObjX + j][tempObjY + k].X += exp(tempStrenght/(tempMass/5))*sign(j);
                grid[tempObjX + j][tempObjY+ k].Y += exp(tempStrenght/(tempMass/5))*sign(k);
				
			
            
			}
			else if((j!=0||k!=0)){
				Hit = true;
				alarm[0] = 10;
				show_debug_message("aa")
			}
			/* else if((j!=0||k!=0)&&!Hit){
				 
				 Hit = true;
				alarm[0] = 2;
				ObjList[i].SpdX*=-1;
				ObjList[i].SpdY*=-1;
				grid[tempObjX + j][tempObjY + k].X = 0;
                grid[tempObjX + j][tempObjY + k].Y = 0;
				
			 }*/


		}
	}
}
