PImage photo;
int offset = 50;

void setup() {
  size(800, 800);
  photo = loadImage("torre_picasso.jpg");
  
}

void draw() {
  int w = photo.width;
  int h = photo.width;
  
  println(w);
  println(h);
  
  image(photo, offset, offset, w-(offset * 2), h-(offset * 2));
}
