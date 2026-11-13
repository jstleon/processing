PFont fuentePersonalizada;
String[] lineas;
float desplazamiento = 0;
float margen = 20;
int tamanioFuente = 16;
color colorTexto = color(0);  // Color inicial: negro

void setup() {
  size(600, 400);
  background(255);
  
  // Cargar la fuente personalizada
  fuentePersonalizada = createFont("myFont.TTF", tamanioFuente);
  textFont(fuentePersonalizada);
  
  // Cargar el archivo de texto
  lineas = loadStrings("texto.txt");
}

void draw() {
  background(255);
  fill(colorTexto);
  
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

void keyPressed() {
  if (keyCode == UP) {
    tamanioFuente += 2;
    fuentePersonalizada = createFont("myFont.TTF", tamanioFuente);
    textFont(fuentePersonalizada);
  } else if (keyCode == DOWN) {
    tamanioFuente -= 2;
    fuentePersonalizada = createFont("myFont.TTF", tamanioFuente);
    textFont(fuentePersonalizada);
  } else if (key == 'R' || key == 'r') {
    colorTexto = color(255, 0, 0);
  } else if (key == 'G' || key == 'g') {
    colorTexto = color(0, 255, 0);
  } else if (key == 'B' || key == 'b') {
    colorTexto = color(0, 0, 255);
  }
}
