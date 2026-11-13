PImage frt;
int y = 0;

void setup(){
  size(800, 800);
  noStroke();
  frt = loadImage("Frutas.jpg");
}

void draw(){
  image(frt, 0, 0);
  y = constrain(mouseY, 0, height);
  for(int i = 0; i < 399; i++){
    color c = get(i, y);
    stroke(c);
    line(i+400, 0, i+400, height);
  }
  stroke(255);
  line(0, y, 399, y);
}
