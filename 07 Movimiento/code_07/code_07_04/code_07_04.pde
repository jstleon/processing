float x = 55.0;
float velocidad = 7.0;
float radio = 55.0;
int direction = 1;

void setup() {
  size(500, 500);
  noStroke();
  ellipseMode(RADIUS);
}

void draw() {
  background(0);
  ellipse(x, height/2, radio, radio);
  x += velocidad * direction;
  if ((x > width - radio) || (x < radio)){
    direction = -direction;
  }
}

