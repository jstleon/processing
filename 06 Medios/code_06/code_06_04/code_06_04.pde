PImage img;
PImage manchas;
PImage logo;

int space = 30;

void setup(){
  size(800, 600);
  img = loadImage("torre_picasso.jpg");
  manchas = loadImage("manchas.png");
  logo = loadImage("logo.png");
}

void draw(){
  background(0);
  image(img, space, space, width - space*2, height - space*2);
  image(manchas, 0, 0);
  image(logo, space*2, space*2);
}
