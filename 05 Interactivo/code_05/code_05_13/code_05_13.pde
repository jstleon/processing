void setup(){
  size(800, 800);
  stroke(0, 102);
}

void draw(){
  float grosor = dist(mouseX, mouseY, pmouseX, pmouseY);
  strokeWeight(grosor);
  line(mouseX, mouseY, pmouseX, pmouseY);
}
