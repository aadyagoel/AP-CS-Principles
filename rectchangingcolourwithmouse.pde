float rectcolour101 = random(256);  
void setup(){
background(25); 
size(500,500);   
fill(rectcolour101, rectcolour101, rectcolour101);  
rect(120, 120, 250, 250); 
}

void draw(){
  background(25); 
  if ((mouseX > 120) && (mouseX < 370) && (mouseY > 120) && (mouseY < 370))// I could have used just this and function also  ; by adding the mousepressed as an && another condition. 
  rectcolourchangemousepress2(); 
}

void rectcolourchangemousepress2(){ 
  if (mousePressed == true) 
  fill(random(256), random(256), random(256)); 
  rect(120, 120, 250, 250); 
} 




// OMG THIS IDEA WORKED !!!!!!!!!!!! I thought about it when I was asleep, I was literally coding in my head when I was asleep, like trying different options, and then I got the idea to do what I did with the ballbouncewithmousepart, you know create two different funcitons and an if loop for running that function inside draw(){}? !!!!!!!!!!!!!
  


  
 
  
  
  
  
