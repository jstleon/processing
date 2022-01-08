int y = 400;
int x = 400;
int radius = 200;

void setup(){
  size(800, 800);
  ellipseMode(RADIUS);
}

void draw(){
  background(100);
  float d = dist(mouseX, mouseY, x, y);
  if(d < radius){
    fill(0);
    }else{
    fill(255);
    }
  ellipse(x, y, radius, radius);
}
