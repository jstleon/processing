class Ball {
  PVector location;
  color ballColor;
  float radius;
  PVector speed;
 
  Ball(float x, float y, float r, color c) {
    location = new PVector(x, y); 
    radius = r;
    ballColor = c;
    speed = new PVector(4, 10);
    
  } 
  
  void display() {
    noStroke();
    fill(ballColor);
    ellipse(location.x, location.y, 2*radius, 2*radius);
  }
  
  void move() {
    location.add(speed);
    bounce();
  } 
  
  void bounce() {
    if (location.x > (width-radius)) { 
      location.x = width-radius;
      speed.x = -speed.x;
    }
    if (location.x < radius) {
      location.x = radius;
      speed.x = -speed.x;
    }
    if (location.y > (height-radius)) {
      location.y = height-radius;
      speed.y = -speed.y;
    }
    if (location.y < radius) { 
      location.y = radius;
      speed.y = -speed.y;
    }
  }
} 
