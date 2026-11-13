PFont fuentePersonalizada;
String[] lineas;

void setup() {
  size(600, 400);
  background(255);
  
  // Cargar la fuente personalizada
  fuentePersonalizada = createFont("AdobeGothicStd-Bold.otf", 20);
  textFont(fuentePersonalizada);
  
  // Cargar el archivo de texto
  lineas = loadStrings("texto.txt");
  
  fill(0);
  for (int i = 0; i < lineas.length; i++) {
    text(lineas[i], 20, 30 + i * 25);
  }
}
