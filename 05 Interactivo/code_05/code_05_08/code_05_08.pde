void setup() {
  size(800, 800);
  strokeWeight(30);
}

void draw() {
  background(204);
  fill(255);
  stroke(102);
  line(width, 0, 0, height);
  
  if (mousePressed == true) {
    stroke(0);
    fill(150, 0, 0);
  }
  line(0, 0, width, height);
  ellipse(width*0.5, height*0.5, 300, 300);
}
