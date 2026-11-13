float x = 55.0;
float y = 55.0;
float velocidadX = 7.0;
float velocidadY = 2.0;
float radio = 55.0;
int directionX = 1;
int directionY = -1;

void setup() {
  size(500, 500);
  noStroke();
  ellipseMode(RADIUS);
}

void draw() {
  background(0);
  ellipse(x, y, radio, radio);
  
  x += velocidadX * directionX;
  if ((x > width - radio) || (x < radio)){
    directionX = -directionX;
  }
  y += velocidadY * directionY;
  if((y > height - radio) || (y < radio)){
    directionY = -directionY;
  }
}

