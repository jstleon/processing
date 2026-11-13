float y = 50.0;
float velocidad = 7.0;
float radio = 15.0;
void setup() {
  size(500, 500);
  noStroke();
  ellipseMode(RADIUS);
}

void draw() {
  background(0);
  ellipse(133, y, radio, radio);
  y = y + velocidad;
  
  if (y > height+radio) {
    y = -radio;
  }
}
