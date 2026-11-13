PFont fuentePersonalizada;
String[] lineas;
float desplazamiento = 0;

void setup() {
  size(600, 400);
  background(255);
  
  // Cargar la fuente personalizada
  fuentePersonalizada = createFont("AdobeGothicStd-Bold.otf", 20);
  textFont(fuentePersonalizada);
  
  // Cargar el archivo de texto
  lineas = loadStrings("texto.txt");
  
  }


void draw() {
  background(255);
  fill(0);
  for (int i = 0; i < lineas.length; i++) {
    text(lineas[i], 20, 30 + i * 20 + desplazamiento);
  }
}

void keyPressed() {
  if (keyCode == UP) {
    desplazamiento += 20;
  } else if (keyCode == DOWN) {
    desplazamiento -= 20;
  }
}
