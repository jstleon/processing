float x = 0.0;
float velocidad = 3.0;
float radio = 55.0;
void setup() {
  size(500, 500);
  noStroke();
  ellipseMode(RADIUS);
}

void draw() {
  background(0);
  ellipse(x, height/2, radio, radio);
  x = x + velocidad;
  
  if (x > width+radio) {
    x = -radio;
  }
}

