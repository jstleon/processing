PImage frt;

void setup(){
  size(500, 500);
  frt = loadImage("Frutas.jpg");
}

void draw(){
  int x = constrain(mouseX, 0, 500);
  int y = constrain(mouseY, 0, 500);
  set(x, y, frt);
}
