PFont font;

void setup(){
  size(800, 800);
  font = loadFont("BloggerSans-48.vlw");
  textFont(font);
}

void draw(){
background(192, 40, 60);
text("¡Hola Mundo!", 275, 420);
}
