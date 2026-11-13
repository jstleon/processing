void setup() {
  size(500, 500);
  noStroke();
  smooth();
  noLoop();
}
void draw() {
  fill(255);
  ellipse(250, 250, 180, 180);
  fill(0);
  ellipse(250+10, 250, 70, 70); // Black circle 
  fill(255);
  ellipse(250+16, 245, 25, 25); // Small, white circle
}

