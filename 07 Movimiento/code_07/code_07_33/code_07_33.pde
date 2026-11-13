float d = 80.0;
float speed = 1.0;
int direction = 1;

void setup(){
  size(800, 800);
  noStroke();
  fill(255, 204);
}

void draw(){
  background(0);
  ellipse(0, height/2, d, d);
  ellipse(width, height/2, d, d);
  ellipse(width/2, 0, d, d);
  ellipse(width/2, height, d, d);
  
  d += speed * direction;
  if((d > width) || (d < width/50)){
    direction = -direction;
  }
}
