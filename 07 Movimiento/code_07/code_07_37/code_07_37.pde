float angle = 0.0;
float speed = 0.03;
float diam = 200;
int posY = int(diam/2);
int offset = int(diam);

void setup() {
  size(1080, 1080);
  noStroke();
}

void draw() {
  background(0);
  angle = angle + speed;
  
  float x1 = width/2 + (sin(angle + PI-QUARTER_PI) * ((width/2)-diam/2));
  float x2 = width/2  + (sin(angle + HALF_PI) * ((width/2)-diam/2));
  float x3 = width/2  + (sin(angle + QUARTER_PI) * ((width/2)-diam/2));
  float x4 = width/2  + (sin(angle + TWO_PI) * ((width/2)-diam/2));
  
  ellipse(x1, posY, diam, diam);
  ellipse(x2, posY + offset, diam, diam);
  ellipse(x3, posY +(offset * 2), diam, diam);
  ellipse(x4, posY +(offset * 3), diam, diam);
}
