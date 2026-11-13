class Ball {
  float x;
  float y;
  float speed;
  float w;
  color c;
  
  Ball(float tempX, float tempY, float tempW, color _c){
  x = tempX;
  y = tempY;
  w = tempW;
  speed = 0;
  c = _c;
}

void gravity() {
  // Add gravity to speed
  speed = speed + gravity;
}
void move() {
  // Add speed to y location
  y = y + speed;
  // If square reaches the bottom
  // Reverse speed
  if (y > height-w/2) {
    speed *= -0.69;
    y = height-w/2;
  }
}
void display() {
  // Display the circle
  
  fill(c);
  noStroke();
  ellipse(x, y, w, w);
}
}
