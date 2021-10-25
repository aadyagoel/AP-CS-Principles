//I did this code all by myself!!!!!!!!!!!!!!! OMG!!!!!!!!!!! And it worked!!!!!!!!!!!!!! Especially the mouse axis part of moving your mouse and the intersection point moves!!!!!!!!!! And then the ball bounce to fit it!!!!!!!!!!!!!! Double OMG!!!!!!!!!! Just in ball bounce initially Mr. Santos helped me, as in told me the dx part but I used/manipulated the ball bounce to fit in the mouse axis by myself!!!!!!!!!!!!!! 
// mouse x determines vertical line's x position 
// and for horizontal line mouse y determines its y position 
void setup() {
}

int ballx = 10;
int ballDx = 1;
int bally = 10; 

void draw() {
  background(255, 255, 255); 
  line(mouseX, 255, mouseX, 0); 
  line(0, mouseY, 255, mouseY); 
if (mousePressed == true) // OMG YESSSSSSSSSSS!!!!!!!!!!!!!!!!!!!!! IT WORKED!!!!!!!!!!!!!!!!! YEAYAYYYAYYAYAYYAYAYAYY!!!!!!!!!!! OMG!!!!!!!!!!! I tried an if loop inside the previous ball bounce function like a double if loop like if mousePressed then do that else do with mouse x and y. And then I tried 
ballbouncewithoutmousepart(); 
else 
ballbounce();
}

void ballbounce() { 
  ellipse(ballx, bally, 10, 10);
  bally += ballDx; 
  if ((bally > height) || (bally < 0) || (bally == mouseY)) 
  ballDx = ballDx * -1; // how does this work for if bally is < 0 because if its smaller than 0 and the ballDx is made -1 then it'll become 0-1  
  ballx += ballDx; 
  if ((ballx > width) || (ballx < 0) || (ballx == mouseX))  
  ballDx = ballDx*-1;  
} 

void ballbouncewithoutmousepart() {
   ellipse(ballx, bally, 10, 10);
   bally += ballDx;  
   if ((bally > height) || (bally < 0))
   ballDx = ballDx * -1; // how does this work for if bally is < 0 because if its smaller than 0 and the ballDx is made -1 then it'll become 0-1  
  
   ballx += ballDx; 
   if ((ballx > width) || (ballx < 0)) 
   ballDx = ballDx*-1; 
   }
