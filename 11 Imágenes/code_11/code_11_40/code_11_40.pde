PImage img;

void setup(){
  size(1000, 1000);
  smooth();
  frameRate(0.5);
  img = loadImage("paleta_10x10.jpg");
}

void draw(){
  background(0);
  for(int x = 0; x < img.width; x++){
    for(int y = 0; y < img.height; y++){
      float xpos1 = random(x * 100);
      float xpos2 = width - random(y * 100);
      color c = img.get(x, y);
      stroke(c);
      strokeWeight(3);
      line(xpos1, 0, xpos2, height);
    }
  }
}
