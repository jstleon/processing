PFont fuentePersonalizada;
String[] lineas;
String palabraClave = "";
float desplazamiento = 0;

void setup() {
  size(600, 400);
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
  
  for (int i = 0; i < lineas.length; i++) {
    if (lineas[i].contains(palabraClave)) {
      highlight(lineas[i], palabraClave, 20, 30 + i * 20 + desplazamiento);
    } else {
      text(lineas[i], 20, 30 + i * 20 + desplazamiento);
    }
  }
}

void highlight(String linea, String palabra, float x, float y) {
  int inicio = linea.indexOf(palabra);
  int fin = inicio + palabra.length();
  
  // Texto antes de la palabra clave
  text(linea.substring(0, inicio), x, y);
  
  // Palabra clave con resaltado
  fill(255, 0, 0);
  text(linea.substring(inicio, fin), x + textWidth(linea.substring(0, inicio)), y);
  
  // Texto después de la palabra clave
  fill(0);
  text(linea.substring(fin), x + textWidth(linea.substring(0, fin)), y);
}

void keyPressed() {
  if (key == ENTER || key == RETURN) {
    palabraClave = "";  // Reiniciar la palabra clave
  } else {
    palabraClave += key;
  }
}
