int characterx = 0, charactery = 200;  
int r = 100, g = 200, b = 255;
int methaneGas = 0, carbondioxideGas = 0, ozoneGas = 0;
float globalTemperature = 14.9;
int second = 0; 
int minute = 0;
int speed = 2; 
int methaneEmissions = 10, carbondioxideEmissions = 10, ozoneEmissions = 10; 
PImage earth;

ArrayList<methane> mMolecules; 
ArrayList<carbondioxide> cMolecules; 
ArrayList<ozone> oMolecules; 
int state; 

void setup() {
  size(700, 500); 
  earth = loadImage("earth_PNG21.png"); 
  mMolecules = new ArrayList <methane>(); 
  cMolecules = new ArrayList <carbondioxide>(); 
  oMolecules = new ArrayList <ozone>(); 
}
   
void draw() {
  state = 0; 
  if(state == 0) {
    gameState();
  }
  if ((key == 'a') || (key == 'A')) {
      state = 1; 
    }
  if (state == 1) {
    drawGraph(10, methaneGas, -1, -1, 20, 20, 10, 20, methaneGas, 30, methaneGas);
  } //<>//
  if ((key == 'b')  || (key == 'B')) {
   state = 0;  
  }
  if(state == 2) {
   //drawGraph();  
  }
  if ((key == 'd') || (key == 'd')) {
   state = 2;  
  }
  timer(); 
  if (globalTemperature >= 16.4) {
    state = 3;  
  }
  if (state == 3) {
    endGame();  
  }
  if ((second == 50) && (globalTemperature < 16.4)) {
    state = 4;  
  }
  if(state == 4) {
    youWin(); 
  }
  if(globalTemperature >= 15.5) {
    r+=2; 
    b-=2;  
  }
}

void youWin() {
  textSize(30); 
  text("You managed to keep the temperature down!", width/2-350, height/2-20); 
  text("Good Job! You win :)", width/2-150, height/2+30); 
}
void endGame(){
  textSize(30); 
  text("Global Temperatures have risen by 1.5 degrees", width/2-350, height/2-20); 
  text("Apocalypse begins", width/2-150, height/2+30); 
}
void gameState() {
  background(r,g,b);
  setupText();
  image(earth, characterx, charactery, 75, 75); 
  moveEarth();
  methaneGT(); 
  carbondioxideGT();
  ozoneGT(); 
  
  for (int i = 0; i < methaneEmissions; i++){
    mMolecules.add(new methane());
    methane m = mMolecules.get(i); 
    m.drawMethane();
    if (m.methaneDown()) {
      mMolecules.remove(i); 
    }
    if(m.methaneAbsorbed()) {
     mMolecules.remove(i); 
     methaneGas++; 
    }
  }

  for (int i = 0; i < ozoneEmissions; i++) {
    oMolecules.add(new ozone()); 
    ozone o = oMolecules.get(i); 
    o.drawOzone(); 
    if(o.ozoneDown()) {
     oMolecules.remove(i);  
    }
    if(o.ozoneAbsorbed()) {
     oMolecules.remove(i); 
     ozoneGas++; 
    }
  }
  for (int i = 0; i < carbondioxideEmissions; i++) {
   cMolecules.add(new carbondioxide()); 
   carbondioxide c = cMolecules.get(i); 
   c.drawCarbondioxide(); 
   if(c.carbondioxideDown()) {
    cMolecules.remove(i);  
   }
   if(c.carbondioxideAbsorbed()) {
    cMolecules.remove(i); 
    carbondioxideGas++; 
   }
  }
}

void setupText() {
float tx = 5, ty = 21.5; // text x and y 
 stroke(0); 
 strokeWeight(1); 
 fill(255);
 rect(tx-2, ty-15.7, 125.5, 20); 
 fill(0);
 textSize(20);  
 text("methane :", tx, ty);
 text(methaneGas, tx+100, ty);
 fill(255);
 rect(tx+128, ty-15.7, 185, 20);
 fill(0);
 text("carbondioxide :", tx+131, ty); 
 text(carbondioxideGas, tx+289, ty); 
 fill(255); 
 rect(tx+318, ty-15.7, 105, 20); 
 fill(0); 
 text("ozone :", tx+321, ty); 
 text(ozoneGas, tx+399, ty); 
 fill(255); 
 rect(tx+427, ty-17.5, 235, 20); 
 fill(0); 
 text("Global temperature :", tx+428, ty); 
 text(globalTemperature, tx+620, ty); 
 fill(255); 
 rect(tx, ty+8.5, 120, 20); 
 fill(0);
 textSize(20); 
 text("Time :", tx, ty+25);
 text(minute, tx+63, ty+25); 
 text(":", tx+83.5, ty+25); 
 text(second, tx+90, ty+25); 
}
void moveEarth () {
 if (keyPressed == true) {
  if(key == 'b') {
    characterx+=3; 
  }
  if(key == 'c') {
    characterx-=3;  
  }
 }
}

void drawGraph (int x1, int y1, int xMin, int yMin, int xMax, int yMax, int size, int x2, int y2, int x3, int y3) {
  // 3 plot points 0 seconds, 30, and 1 minute. 
  // 3 lines 
  background(255); 
  int xwidth = width/(xMax-xMin);
  int ywidth = height/(yMax-yMin);
  int xp1 = (-xMin*xwidth)+(x1*xwidth);
  int yp1 = (height-((-yMin)*ywidth))-(y1*ywidth);
  int xp2 = (-xMin*xwidth)+(x2*xwidth); 
  int yp2 = (height-((-yMin)*ywidth))-(y2*ywidth); 
  int xp3 = (-xMin*xwidth)+(x3*xwidth);
  int yp3 = (height-((-yMin)*ywidth))-(y3*ywidth); 
  int calc = (yMax*ywidth);
  println(calc);
  stroke(0);
  strokeWeight(2);
  for (int Size = 0; Size < width; Size+= xwidth){
    line(Size,0, Size, height); 
  }

  for (int SizeOther = 0; SizeOther < height; SizeOther+=ywidth){
    line(0, SizeOther, width, SizeOther);
  }
  strokeWeight(5);
  line(-xMin*xwidth, 0, -xMin*xwidth, height); 

  strokeWeight(5);
  line(0, yMax*ywidth, width, yMax*ywidth);

  strokeWeight(size);
  stroke(150,50,255);
  point(xp1, yp1);
  point(xp2, yp2); 
  point(xp3, yp3); 
}

void methaneGT() {
  if (methaneGas%3 == 0) {
   globalTemperature+=0.001;
  }
}

void carbondioxideGT() {
  if (carbondioxideGas%9 == 0) {
    globalTemperature+=0.001; 
  }
}

void ozoneGT() {
  if (ozoneGas%12 == 0) {
   globalTemperature+=0.001;  
  }
}
void timer() {
 println(frameCount); 
 if(frameCount%60 == 0) {
   second++;
 }
 if(second == 59) {
  minute++; 
  second = 0; 
 }
 if(minute == 60) {
  second = 0; 
  minute = 0; 
 }
}

class methane {
  int mx; 
  int my; 
  int i; 
  methane() {
    mx = int(random(0, width-10)); 
    my = int(random(0, width/2)); 
  }
  void drawMethane() {
   fill(100); 
   ellipse(mx, my, 10, 10); 
   my+=speed; 
  }
  boolean methaneDown() {
    if (my > height) {
      return true; 
    }
      else {
        return false; 
      }
  }
  boolean methaneAbsorbed() {
    if ((mx >= characterx) && (mx <= characterx+75) && (my >= charactery) && (my <= charactery+75)){
      return true; 
    }
      else {
        return false; 
      }
    }
  }

class ozone {
 int ox; 
 int oy; 
 ozone() {
  ox = int(random(0, width-10)); 
  oy = int(random(0, width/2)); 
 }
 void drawOzone() {
  fill(0, 0, 255); 
  ellipse(ox, oy, 10, 10); 
  oy+=speed; 
 }
 boolean ozoneDown() {
   if (oy > height) {
    return true;  
   }
     else {
       return false; 
     }
 }
 boolean ozoneAbsorbed() {
  if ((ox >= characterx) && (ox <= characterx+75) && (oy >= charactery) && (oy <= charactery+75)) {
    return true; 
  }
    else {
      return false;
  }
 }
}

class carbondioxide {
 int cx; 
 int cy; 
 carbondioxide() {
  cx = int(random(0, width-10)); 
  cy = int(random(0, width/2)); 
 }
 void drawCarbondioxide() {
   fill(255, 0, 0); 
   ellipse(cx, cy, 10, 10); 
   cy+=speed; 
 }
 boolean carbondioxideDown() {
   if (cy > height) {
     return true; 
   } 
   else {
     return false;
   }
 }
 boolean carbondioxideAbsorbed() {
   if ((cx >= characterx) && (cx <= characterx+75) && (cy >= charactery) && (cy <= charactery+75)) {
    return true; 
   }
   else {
     return false;
   }
 }
}
