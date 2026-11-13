float x = 55.0;
float y = 55.0;
float velocidadX = 7.0;
float velocidadY = 2.0;
float radio = 20.0;
int directionX = 1;
int directionY = -1;

void setup() {
  size(800, 800);
  noStroke();
  ellipseMode(RADIUS);
  background(0);
}

void draw() {
  fill(0, 15);
  rect(0, 0, width, height);
  
  if(directionY == -1){
  fill(255, 0, 0);  
  }else{
  fill(0, 0, 255);
  }
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
