void setup() {
  size(800, 800);
  rectMode(CENTER);
}

void draw() {
  background(0);
    if (mousePressed == true) {
      fill(255, 0, 0);
      ellipse(width/2, height/2, 500, 500);
    } 
  }
