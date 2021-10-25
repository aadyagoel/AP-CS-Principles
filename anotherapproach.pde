float rectcolour = random(256); 
float rectcolour2 = rectcolour;
float rectcolour3 = rectcolour; 
void setup(){
size(500,500);   

}

void draw(){
fill(rectcolour, rectcolour2, rectcolour3);  
rect(120, 120, 250, 250); 
  if ((mouseX > 120) && (mouseX < 370) && (mouseY > 120) && (mouseY < 370))// I could have used just this and function also  ; by adding the mousepressed as an && another condition. 
  rectcolourchangemousepress(); 
}

void rectcolourchangemousepress(){ 
  if (mousePressed == true){
  rectcolour = random(256); 
  rectcolour2 = random(256); 
  rectcolour3 = random(256); 
  }
} 
