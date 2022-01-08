PImage picasso;
PImage manchas;
PImage logo;
color colorear = color(190, 30, 150);

void setup(){
  size(800, 600);
  picasso = loadImage("torre_picasso.jpg");
  manchas = loadImage("manchas.png");
  logo = loadImage("logo.png");
}

void draw(){
  tint(colorear);
  image(picasso, 0, 0);
  image(manchas, -400, 0);
  
  noTint();
  image(logo, 40, 30);
}
