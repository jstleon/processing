PImage estrella;

float x, y;
float rot;

void setup(){
  size(1000, 1000);
  estrella = loadImage("Estrella.png");
  x = 0;
  y = height / 2.0;
  rot = 0.0;
}

void draw(){
  background(255);
  translate(x, y);
  rotate(rot);
  image(estrella, 0, 0);
  x += 2.5;
  rot += 0.05;
  
  if(x > width+50){
    x = -50;
  }
}
