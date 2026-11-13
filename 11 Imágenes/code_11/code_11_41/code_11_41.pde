PImage img;

void setup(){
  size(1000, 1000);
  smooth();
  frameRate(30);
  img = loadImage("paleta_10x10.jpg");
  noStroke();
  background(0);
}

void draw(){
  float w = random(2, 40); 
  int ix = int(random(img.width));
  int iy = int(random(img.height));
  color c = img.get(ix, iy);
  fill(c, 200);
  int xgrid = int(random(0, 100)) * 10;
  int ygrid = int(random(0, 100)) * 10;
  ellipse(xgrid, ygrid, w, w);
}
