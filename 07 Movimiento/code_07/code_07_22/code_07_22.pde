float angle = 0.0;
float offset = 231;
float scalar = 120;
float speed = 0.03;
float paso = 160;
float x = 80;
float d = 120;

void setup() {
  size(820, 462);
}
void draw() {
  background(0);
  float y1 = offset + sin(angle) * scalar;
  float y2 = offset + sin(angle + 0.4) * scalar;
  float y3 = offset + sin(angle + 0.8) * scalar;
  float y4 = offset + sin(angle + 1.2) * scalar;
  float y5 = offset + sin(angle + 1.6) * scalar;

  ellipse(x, y1, d, d);
  ellipse(x+paso, y2, d, d);
  ellipse(x+(paso*2), y3, d, d);
  ellipse(x+(paso*3), y4, d, d);
  ellipse(x+(paso*4), y5, d, d);
  angle += speed;
}
