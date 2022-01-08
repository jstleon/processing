void setup(){
  size(800, 800);
}

void draw(){
  background(0);
  float d = dist(width/2, height/2, mouseX, mouseY);
  ellipse(width/2, height/2, d*2, d*2);
}
