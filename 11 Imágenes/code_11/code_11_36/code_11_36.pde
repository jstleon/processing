void setup(){
  size(1000, 1000);
  smooth();
  fill(204, 0, 0);
}

void draw(){
  background(0);
  noStroke();
  ellipse(200, 500, 480, 480);
  color c = get(mouseX, mouseY);
  float r = red(c);
  stroke(255 - r);
  line(mouseX, 0, mouseY, height);
  line(0, mouseY, width, mouseY);

}
