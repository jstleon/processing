float speed = 15.5;
int diameter = 50;
float x;
float y;

void setup(){
  size(800, 800);
  background(60);
  x = width/2;
  y = height/2;
  randomSeed(30);
}

void draw(){
  
  x += random(-speed, speed);
  y += random(-speed, speed);
  ellipse(x, y, diameter, diameter);
}
