PFont fuentePersonalizada;
String[] lineas;
float desplazamiento;
float velocidad = 1;
int tamanioFuente = 16;
float margen = 20;

void setup() {
  size(600, 400);
  background(255);
  
  // Cargar la fuente personalizada
  fuentePersonalizada = createFont("miFuente.ttf", tamanioFuente);
  textFont(fuentePersonalizada);
  
  // Cargar el archivo de texto
  lineas = loadStrings("inteligencia_artificial.txt");
  
  // Establecer el desplazamiento inicial
  desplazamiento = height;
}

void draw() {
  background(255);
  fill(0);
  
  float y = desplazamiento;
  
  for (int i = 0; i < lineas.length; i++) {
    text(lineas[i], margen, y);
    y += 20;  // Espacio entre líneas
  }
  
  desplazamiento -= velocidad;
  
  if (y < 0) {
    desplazamiento = height;
  }
}
