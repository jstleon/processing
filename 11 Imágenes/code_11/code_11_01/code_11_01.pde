PImage img;

void setup(){
  size(1000, 1000);
  img = loadImage("a.jpg");
}

void draw(){
  background(0);
  image(img, 0, 0, 1000, 1000);
}
