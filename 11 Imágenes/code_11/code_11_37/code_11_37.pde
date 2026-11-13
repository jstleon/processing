PImage frt;

void setup(){
  size(1200, 800);
  frt = loadImage("Frutas.jpg");
  stroke(255);
}

void draw(){
  background(frt);
  color c = get(mouseX, mouseY);
  float r = red(c);
  float g = green(c);
  float b = blue(c);
  fill(r, 0, 0);
  rect(20, 20, 150, 760);
  fill(0, g, 0);
  rect(200, 20, 150, 760);
  fill(0, 0, b);
  rect(380, 20, 150, 760);
}
