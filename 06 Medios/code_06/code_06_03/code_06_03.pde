PImage photo;

void setup() {
  size(800, 600);
  photo = loadImage("torre_picasso.jpg");
}

void draw() {
  image(photo, 0, 0);
}
