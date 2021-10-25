int ellipseSize = 10; 
void setup(){
    size(500,500); 
    background(255); 
  }
void draw(){

  ellipse(width/2,height/2,ellipseSize, ellipseSize); 
  ellipseSize +=1; 

}
