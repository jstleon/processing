class Ball {    

float x, y;
color ballColor;
float radius;
float speed = 2.0;
float gravity = 0.2;
float dx = 0.8;
float dampen = -0.8;

Ball() {
  this(random(width), random(height), 25.0, color(255, 0, 0));
} 

Ball(float x, float y, float r, color c) {
  this.x = x;
  this.y = y;
  // size, r pixels
  radius = r;
  ballColor = c;
}

Ball(float r, color c) {
  this(random(width), random(height), r, c);
} 

void display() {
  noStroke();
  fill(ballColor);
  ellipse(x, y, 2*radius, 2*radius);
} 

void move() {
  x = x + dx;
  y = y + speed;
  speed = speed + gravity;
  // check to see if it bounces
  bounce();
}

void bounce() {
    if (x > (width-radius)) {
      x = width-radius;
      dx = -dx; }
    if (x < radius) {
      x = radius;
      dx = -dx;
    }
    if (y > (height-radius)) {
      y = height-radius;
      speed = speed * dampen ;
    }
  }
} // class ball
