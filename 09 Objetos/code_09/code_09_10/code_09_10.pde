void setup(){
  size(1000, 1000);
}

void draw(){
  background(255);
  PVector mouse = new PVector(mouseX, mouseY);
  PVector center = new PVector(width/2, height/2);
  mouse.sub(center);
  mouse.mult(0.8);
  translate(width/2, height/2);
  fill(0);
  ellipse(0, 0, 10, 10);
  ellipse(mouse.x, mouse.y, 10, 10);
  line(0, 0, mouse.x, mouse.y);
}
