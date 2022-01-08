void setup() {
  size(500, 500);
}

void draw() {
  background(0);
  int x = 0;
  while (x < width) {
    stroke(255);
    line(x, 0, x, height);
    x +=3;
  }
}
