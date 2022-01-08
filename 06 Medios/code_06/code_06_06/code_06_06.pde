color morado = color(190, 30, 150, 255);
color verde = color(90, 180, 50, 170);
color amarillo = color(190, 130, 50, 150);

PImage picasso;

void setup(){
  size(800, 600);
  picasso = loadImage("torre_picasso.jpg");
}

void draw(){
  background(0);
  tint(morado);
  image(picasso, 0, 0);
  
  tint(verde);
  image(picasso, width*0.33, 0);
  
  tint(amarillo);
  image(picasso, width*0.66, 0);
}
