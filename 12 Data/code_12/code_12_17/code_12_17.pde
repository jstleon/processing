PFont[] fuentes = new PFont[3];
String[] lineas;
float desplazamiento = 0;
float margen = 20;
int tamanioFuente = 16;
color colorTexto = color(0);  // Color inicial: negro

void setup() {
  size(600, 400);
  background(255);
  
  // Cargar las fuentes disponibles
  fuentes[0] = createFont("fuente1.ttf", tamanioFuente);
  fuentes[1] = createFont("fuente2.ttf", tamanioFuente);
  fuentes[2] = createFont("fuente3.ttf", tamanioFuente);
  textFont(fuentes[0]);
  
  // Cargar el archivo de texto
  lineas = loadStrings("texto.txt");
}

void draw() {
  background(255);
  fill(colorTexto);
  
  float y = 30 + desplazamiento;
  
  for (int i = 0; i < lineas.length; i++) {
    float x = margen;
    text(lineas[i], x, y);
    y += 20;
  }
}

void keyPressed() {
  if (key == '1') {
    textFont(fuentes[0]);
  } else if (key == '2') {
    textFont(fuentes[1]);
  } else if (key == '3') {
    textFont(fuentes[2]);
  }
}
