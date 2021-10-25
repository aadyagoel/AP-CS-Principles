float ballHeight = 0; // starting height of the ball
float speed = 0 , g = 0.1; // current speed of the ball and acceleration due to gravity
float dampening = 0.9; // dampening effect for the ball 
int Bounce = 0; 
void setup () {
size (100 , 250);
}
void draw () {
// clear the screen 
background (255);
// draw the ball
fill (0); 
ellipse ( width / 2 , ballHeight , 10 , 10);
Bounce ++; 
// modify the ball 's height
ballHeight += speed ;
// increase the speed of the ball due to gravity
speed += g ;      
// bounce !
if ( ballHeight > height ) {
speed *= dampening ;
ballHeight = height ; // speed is decreased everytime as when dampening first takes effect it is -0.9 so 90 %, and therefore the ball rises 90% of its original height, and then needs less g s added to speed to make it fall to reach height down, which decreases speed and then the dampening is 90% of the latter one so everytime the height is decreased y 10%, and so the process repeats itself 
// there is however, one question that persists, when the ball reaches a really low speed, let's say its 0.1, and the dampening is also less, the ball rises less, but after one point, the height and speed and after calculation dampening doesn't decrease, and so the ball continues to bounce from a certain point. 
// Another thing I noticed was that when decreasing, the speed decreases by less everytime : speed let's say is 1.0, then *0.9 = 0.9, then 0.9 (cuz its gonna take 0.9 to go down),  0.9*0.9 = 0.81, then 0.81*0.9, = 0.72, then 0.72*0.9 = 0.63, then 0.63*6 = 0.54, so you see : 90%, 81%, 72%, 63%, 54%, 45%, 36%, 27%, 18%, 9%, so you see how 0.09 is being taken off everytime, but not 10%, like less every time, 90% of every one after.
// And if we continue, then we see that 0.09*0.9 = 0.081, and so on and so forth. But what I don't understand is why the ball doesn't keep getting smaller? Or maybe it does but since its by a hugely small amount, we don't notice it? And it doesn't stop because this is an infinite loop, but shouldn't it get down to such a small bounce that it appears to have come to rest? 
// How exactly does the speed decrease? : so after ball reaches height (down), then it goes up by dampening, as it's going up, speed is positive adding (towards down), and increasing the speed (increasing speed makes it go down, and decreasing it makes it go up), so it keeps going up until the result of the dampening*speed becomes 0, for example, dampening*speed = -0.9, and everytime +0.1 from g, makes it go up first by -0.9, then -0.8, and so on until it reaches 0, and then it becomes +0.1, making it go down once again. 
// That's how it goes up and comes down (the bouncing), then how does the speed overall decrease overtime? So when it comes down again, speed depends on the number of g (0.1) s that were used to bring it down to height, which we presume in the beginning was 1.0, so the speed then is 1.0, then it multiplies with the dampeing to go up again, becoming 0.9, and so the speed is then 0.9, as it takes only 9 gs to make it come down now instead of 10, so it keeps decreasing, and as a result, the height keeps on decreasing. One might wonder how this takes place as the speed to go up is the same speed (or number) to come down; like 0.9 to go up, and then the same 0.9 to come down, so where is the 0.1 or less or more (0.09) lost? This is lost when the speed after coming down is multiplied with the dampening which is -0.9 which is 90%, this is how 10% is lost each time, as its 90% of the previous number (or speed) to go up. If the dampening wasn't -0.9 and it was -1 for example, the ball keeps on bouncing, from the same height, not getting any lesser. 
// If this is what we wanted to do, why, one might ask do we need the dampening variable? 
// when the speed gets as low to this point 9%, then the dampening == 0, then speed *d(0) = 0, so ballHeight +=0 but that will depend on what ballheight is,  
// So if we want the ball to stop at one point, we could make a variable called Bounces, and count the number of bounces it takes to reach a constant height, and then use that to name the particular function or loop we're doing, and then write Bounce++ with everytime the loop is used and then println (Bounce); so we know at which point the bounce becomes constant, and then we can write : if (Bounce == x) { then dampening = 0; }
println(Bounce); 
if (Bounce == 2955){
  dampening = 0; 
}
}
} 
