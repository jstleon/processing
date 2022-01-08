void setup() {
  size(400, 400);
  surface.setResizable(true);
}

void draw() {
  background(255);
  strokeWeight(15);
  line(100, 100, width-100, height-100);
}
