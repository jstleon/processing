class ball {   
  
  color ballColor;
  float radius;
  PVector location;
  PVector oldLocation;
  PVector nudge;
  
  ball() {
    this(new PVector(random(width), random(height)), 10);
  } 
  
  ball(PVector loc, float r) {
    location = loc;
    radius = r;
    ballColor = color(255);
    oldLocation = location.get();
    nudge = new PVector(random(1, 3), random(1, 3));
    location.add(nudge);
  } 

void display() {
    noStroke();
    fill(ballColor);
    ellipse(location.x, location.y, 2*radius, 2*radius);
  } 
  
void move() {
    PVector temp = location.get();
    location.x += (location.x - oldLocation.x);
    location.y += (location.y - oldLocation.y);
    oldLocation.set(temp);
    bounce();
  } // move()

void bounce() {
    if (location.x > (width-radius)) { // bounce against the right edge
      location.x = width-radius;
      oldLocation.x = location.x;
      location.x -= nudge.x;
    }
      if (location.x < radius) { // bounce against the left edge
        location.x = radius;
        oldLocation.x = location.x;
        location.x += nudge.x;
      }
      if (location.y > (height-radius)) { // bounce against the bottom edge
        location.y = height-radius;
        oldLocation.y = location.y;
        location.y -= nudge.y;
      }
      if (location.y < radius) { // bounce against the top edge
        location.y = radius;
        oldLocation.y = location.y;
        location.y += nudge.y;
      }
    } // bounce()
  }
