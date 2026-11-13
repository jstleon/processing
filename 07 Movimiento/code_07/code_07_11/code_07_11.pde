float speed = 30.0;
int diameter = 80;
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
  x = constrain(x, diameter, width - diameter);
  y = constrain(y, diameter, height - diameter);  
  ellipse(x, y, diameter, diameter);
}
