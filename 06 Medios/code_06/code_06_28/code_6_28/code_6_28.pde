PFont font;

void setup(){
  size(500, 500);
  font = loadFont("AGBook-48.vlw");
  textFont(font);
}

void draw(){
  background(0);
  
  textSize(88);
  text("¡Hola Mundo!", 50, 130);
  
  textSize(48); // Tamaño letra original
  text("¡Hola Mundo!", 50, 250);
  
  textSize(18);
  text("¡Hola Mundo!", 50, 330);
  
  textSize(10);
  text("¡Hola Mundo!", 50, 400);
  
  
}
