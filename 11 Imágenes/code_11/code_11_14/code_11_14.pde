PImage source;

void setup(){
  size(1000, 1000);
  source = loadImage("e.jpg");
}

void draw(){
image(source, 0, 0);
filter(DILATE);

}
