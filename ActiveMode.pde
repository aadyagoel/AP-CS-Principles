float ballHeight = 0;     // starting height of the ball
float speed = 0, g = 0.1; // current speed of the ball and acceleration due to gravity
float dampening = -0.8;   // dampening effect for the ball

void setup() {
  size(100, 250);
}

void draw() {
  // clear the screen
  background(255);
  // draw the ball
  fill(0);
  ellipse(width / 2, ballHeight, 10, 10);

  // modify the ball's height
  ballHeight += speed;
  // increase the speed of the ball due to gravity
  speed += g;

  // bounce!
  if (ballHeight > height) {
    speed *= dampening;
    ballHeight = height;
  }
}
