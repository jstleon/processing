int maxImages = 6;
int imageIndex = 0;

PImage [] images = new PImage[maxImages];

void setup(){
  size(1000, 1000);
  images [0] = loadImage("a.jpg");
  images [1] = loadImage("b.jpg");
  images [2] = loadImage("c.jpg");
  images [3] = loadImage("d.jpg");
  images [4] = loadImage("e.jpg");
  images [5] = loadImage("f.jpg");
}

void draw(){
  image(images[imageIndex], 0, 0);
}

void mousePressed(){
  imageIndex = int(random(images.length));
}
