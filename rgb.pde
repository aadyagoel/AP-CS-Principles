size(500,500); 
int r = 0; 
int g = 0; 
int b = 0; 
float Rp = r/255; 
float Gp = g/255; 
float Bp = b/255; 
float min; // = min(Rp, Gp, Bp); 
float max; // = max(Rp, Gp, Bp); 
// what is max 
if((Rp > Gp) && (Rp > Bp)){
  max = Rp;  
}
if((Gp > Bp) && (Gp > Rp)) {
  max = Gp;  
}
if((Bp > Rp) && (Bp > Gp)) {
  max = Bp;    
}
// what is min 
if((Rp < Gp) && (Rp < Bp)){
  min = Rp;  
}
if((Gp < Bp) && (Gp < Rp)) {
  min = Gp;  
}
if((Bp < Rp) && (Bp < Gp)) {
  min = Bp;    
}
else {
  min = Rp; 
}
float d = max - min; 
float Saturation; 
float Brightness;
float hue; 
if (d == 0){
if(max == Rp) {
  hue = 60*(((Gp - Bp)/d)+2); 
}
if(max == Gp) {
  hue = 60*(((Bp-Rp)/d)+2); 
}
else if(max == Bp) {
  hue = 60*(((Rp-Gp)/d)+4); 
}   
}

// what is saturation 
if (max == 0){
 Saturation  = 0;  
}
else {
  Saturation = d/max; 
}
// brightness is always max 
Brightness = max; 
colorMode(RGB, 100); 
fill(r,g,b); 
rect(width/2-100, width/2-50, 100, 100); 
colorMode(HSB, 100); 
fill(hue, Saturation, Brightness); 
rect(width/2+10, width/2-50, 100, 100); 

// 
println(hue); 
println(Saturation); 
println(Brightness); 
// fill complement 
colorMode(HSB, 360); 
fill(hue+180, Saturation, Brightness); 
rect(width/2-150, width/2-50, 100, 100); 
