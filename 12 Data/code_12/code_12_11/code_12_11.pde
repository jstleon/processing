String[] lineas;

void setup() {
  size(600, 400);
  background(255);
  
  // Cargar el archivo de texto
  lineas = loadStrings("texto.txt");
  
  fill(0);
  for (int i = 0; i < lineas.length; i++) {
    text(lineas[i], 20, 30 + i * 20);
  }
}
