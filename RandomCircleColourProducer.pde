size(500,500); 
float d = random(151);
println(d); 
if (d<50){
  fill(0, 0, 255);
  ellipse(width/2, width/2, d/2, d/2); 
} 

if ((d >= 50) && (d <= 100)){
  fill(0, 255, 0); 
  ellipse(width/2, width/2, d/2, d/2); 
} 

if (d>100){
  fill(255, 0, 0); 
  ellipse(width/2, width/2, d/2, d/2); 
} 
