PFont fuentePersonalizada;
String[] lineas;
float desplazamiento = 0;
float margen = 20;

void setup() {
  size(800, 400);
  background(255);
  
  // Cargar la fuente personalizada
  fuentePersonalizada = createFont("myFont.TTF", 16);
  textFont(fuentePersonalizada);
  
  // Cargar el archivo de texto
  lineas = loadStrings("texto.txt");
}

void draw() {
  background(255);
  fill(0);
  
  float y = 30 + desplazamiento;
  
  for (int i = 0; i < lineas.length; i++) {
    float x = margen;
    String[] palabras = split(lineas[i], ' ');
    String lineaActual = palabras[0];
    
    for (int j = 1; j < palabras.length; j++) {
      if (textWidth(lineaActual + " " + palabras[j]) < width - 2 * margen) {
        lineaActual += " " + palabras[j];
      } else {
        text(lineaActual, x, y);
        y += 20;
        lineaActual = palabras[j];
      }
    }
    text(lineaActual, x, y);
    y += 20;
  }
}
