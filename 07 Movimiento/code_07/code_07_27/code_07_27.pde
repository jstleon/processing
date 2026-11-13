void setup() {
  size(500, 500);
  rectMode(CENTER);
}
void draw() {
  pushMatrix();
  translate(mouseX, mouseY);
  fill(255);
  rect(0, 0, 60, 60);
  popMatrix();
  translate(width/2, height/2);
  fill(255,0,0);
  rect(0, 0, 60, 60);
}
