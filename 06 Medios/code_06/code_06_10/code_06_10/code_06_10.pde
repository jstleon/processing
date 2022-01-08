
int offset = 50;

void setup() {
  size(800, 800);
  noStroke();
  frameRate(24);
}

void draw() {
  background(210, 10, 60);
  fill(0);
  for (int x = offset; x < width-offset; x+= 4) {
    for (int y = offset; y < height-offset; y+= 40) {
      ellipse(x + random(-0.1, 0.1), y + random(-5, 5), 3, 3);
    }
    if ((frameCount > 300) && (frameCount < 311)) {
    }
    println(frameRate);
  }
}
