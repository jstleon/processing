float angle = 0.0;
void setup() {
  size(500, 500);
  smooth();
}
void draw() {
  translate(mouseX, mouseY);
  float scalar = sin(angle) + 2;
  scale(scalar);
  strokeWeight(1.0 / scalar);
  rect(-30, -30, 60, 60);
  angle += 0.05;
}
