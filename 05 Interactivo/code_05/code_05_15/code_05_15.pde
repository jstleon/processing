void setup(){
  size(800, 800);
}

void draw(){
  background(204);
  stroke(255);
  line(width/2, height/2, mouseX, mouseY);
  stroke(15);
  strokeWeight(15);
  float mx = map(mouseX, 0, width, 200, 600);
  line(width/2, height/2, mx, mouseY);
}
