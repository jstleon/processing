PFont myFont;

void setup() {
  size(200, 200);
  // Descomenta las siguientes dos líneas para ver las fuentes disponibles 
  String[] fontList = PFont.list();
  printArray(fontList);
  myFont = createFont("Impact", 32);
  textFont(myFont);
  textAlign(CENTER, CENTER);
  text("!@#$%", width/2, height/2);
}
