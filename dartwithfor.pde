size(500,500); 
stroke(0,0,0);  
background(255, 255, 255); 
float DartBoardScale = 1; 

arc(width/2, height/2, DartBoardScale*500, DartBoardScale*500, 0, TWO_PI, OPEN); 
arc(width/2, height/2, DartBoardScale*450, DartBoardScale*450, 0, TWO_PI, OPEN); 
arc(width/2, height/2, DartBoardScale*300, DartBoardScale*300, 0, TWO_PI, OPEN); 
arc(width/2, height/2, DartBoardScale*270, DartBoardScale*270, 0, TWO_PI, OPEN); 


for (int Size = 19; Size>0; Size--){ 
  
   arc(width/2, height/2, DartBoardScale*500, DartBoardScale*500, 0, Size*PI/10, PIE);
   arc(width/2, height/2, DartBoardScale*450, DartBoardScale*450, 0, Size*PI/10, PIE);
   arc(width/2, height/2, DartBoardScale*300, DartBoardScale*300, 0, Size*PI/10, PIE); 
   arc(width/2, height/2, DartBoardScale*270, DartBoardScale*270, 0, Size*PI/10, PIE); 
   
   
} 

fill(0, 255, 0); 
arc(width/2, height/2, DartBoardScale*70, DartBoardScale*70, 0, TWO_PI, OPEN); 
fill(255, 255, 255); 
arc(width/2, height/2, DartBoardScale*36, DartBoardScale*36, 0, TWO_PI, OPEN); 
fill(255, 0, 0); 
arc(width/2, height/2, DartBoardScale*18, DartBoardScale*18, 0, TWO_PI, OPEN); 
